package com.lory.biblereader.parts.upperrightstack.bookmarkpart.eventhandler;

import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Combo;

import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.Bible;

public class BooksComboSelectionListener implements SelectionListener {

	private Bible bible;
	private Combo books;
	private Combo chapters;
	private TranslationManager translationManager;

	public BooksComboSelectionListener(Combo books, Combo chapters, Bible bible,
			TranslationManager translationManager) {
		this.books = books;
		this.chapters = chapters;
		this.bible = bible;
		this.translationManager = translationManager;
	}

	@Override
	public void widgetSelected(SelectionEvent e) {
		chapters.removeAll();
		for (int i = 1; i <= bible.getBooks().get(books.getSelectionIndex()).getBookSize(translationManager); i++) {
			chapters.add(String.valueOf(i));
		}
		chapters.select(0);
	}

	@Override
	public void widgetDefaultSelected(SelectionEvent e) {
	}
}
