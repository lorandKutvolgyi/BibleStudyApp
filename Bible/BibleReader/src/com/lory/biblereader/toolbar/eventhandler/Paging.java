package com.lory.biblereader.toolbar.eventhandler;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.SWT;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.parts.upperrightstack.historypart.History;

@Creatable
@Singleton
public class Paging {

	@Inject
	private CurrentChapter currentChapter;

	public void paging(int keyCode, History history) {
		if (!isSelectedChapter()) {
			return;
		}
		int id = currentChapter.getChapter().getId();
		Chapter chapter = changeCurrentChapter(getNewId(keyCode, id));
		if (chapter != null) {
			history.addChapter(chapter);
		}
	}

	private boolean isSelectedChapter() {
		return currentChapter.getChapter() != null;
	}

	private int getNewId(int keyCode, int id) {
		int newId = id;
		if (keyCode == SWT.ARROW_RIGHT) {
			newId++;
		} else if (keyCode == SWT.ARROW_LEFT) {
			newId--;
		}
		return newId;
	}

	private Chapter changeCurrentChapter(int newId) {
		Book book = currentChapter.getChapter().getBook();
		if (newId > 0 && newId <= isMax(book)) {
			Chapter chapter = book.getChapter(newId);
			currentChapter.setChapter(chapter);
			return chapter;
		}
		return null;
	}

	private int isMax(Book book) {
		int max = book.getChapters().size();
		return max;
	}
}
