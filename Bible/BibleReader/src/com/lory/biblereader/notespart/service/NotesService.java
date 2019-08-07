package com.lory.biblereader.notespart.service;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.model.Chapter;
import com.lory.biblereader.base.translation.model.CurrentChapter;
import com.lory.biblereader.base.translation.model.dao.BibleDao;

@Creatable
@Singleton
public class NotesService {

	private CurrentChapter currentChapter;
	private BibleDao dao;

	@Inject
	public NotesService(CurrentChapter currentChapter, BibleDao dao) {
		this.currentChapter = currentChapter;
		this.dao = dao;
	}

	public String getUserNotes(Chapter chapter) {
		return dao.getUserNote(chapter);
	}

	public void setUserNotes(String userNotes) {
		Chapter chapter = currentChapter.getChapter();
		if (chapter != null) {
			dao.saveUserNote(chapter.getBook().getTitle(), chapter.getId(), userNotes);
		}
	}
}
