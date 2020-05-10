package com.lory.biblereader.notespart.service;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.model.CurrentChapter;
import com.lory.biblereader.notespart.repository.NotesRepository;
import com.lory.biblereader.textpart.Chapter;

@Creatable
@Singleton
public class NotesService {

	private CurrentChapter currentChapter;
	private NotesRepository repository;

	@Inject
	public NotesService(CurrentChapter currentChapter, NotesRepository dao) {
		this.currentChapter = currentChapter;
		this.repository = dao;
	}

	public String getUserNotes(Chapter chapter) {
		return repository.getUserNote(chapter);
	}

	public void setUserNotes(String userNotes) {
		Chapter chapter = currentChapter.getChapter();
		if (chapter != null) {
			repository.saveUserNote(chapter.getBook().getTitle(), chapter.getId(), userNotes);
		}
	}
}
