package com.lory.biblereader.textpart.toolbar.eventhandler;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.SWT;

import com.lory.biblereader.base.translation.model.CurrentChapter;
import com.lory.biblereader.bookspart.Book;
import com.lory.biblereader.historypart.entity.History;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.textpart.Chapter;
import com.lory.biblereader.textpart.repository.TextRepository;

@Creatable
@Singleton
public class Paging {

	@Inject
	private CurrentChapter currentChapter;
	@Inject
	private TranslationManager translationManager;
	@Inject
	private TextRepository textRepository;

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
		if (newId > 0 && newId <= getMax(book)) {
			String translation = currentChapter.getChapter().getTranslation();
			Chapter chapter = book.getChapter(newId, translation, translationManager, textRepository);
			currentChapter.setChapter(chapter);
			return chapter;
		}
		return null;
	}

	private int getMax(Book book) {
		return book.getBookSize(translationManager, textRepository);
	}
}
