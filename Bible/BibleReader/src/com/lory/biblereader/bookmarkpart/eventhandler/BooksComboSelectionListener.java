package com.lory.biblereader.bookmarkpart.eventhandler;

import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.Combo;

import com.lory.biblereader.base.translation.menu.TranslationManager;
import com.lory.biblereader.base.translation.model.Bible;
import com.lory.biblereader.base.translation.model.Book;
import com.lory.biblereader.base.translation.model.dao.BibleDao;

public class BooksComboSelectionListener extends SelectionAdapter {

	private Bible bible;
	private Combo books;
	private Combo chapters;
	private TranslationManager translationManager;
	private BibleDao bibleDao;

	public BooksComboSelectionListener(Combo books, Combo chapters, Bible bible, TranslationManager translationManager,
			BibleDao bibleDao) {
		this.books = books;
		this.chapters = chapters;
		this.bible = bible;
		this.translationManager = translationManager;
		this.bibleDao = bibleDao;
	}

	@Override
	public void widgetSelected(SelectionEvent e) {
		if (chapters != null) {
			chapters.removeAll();
		}
		Book selectedBook = bible.getBooks().get(books.getSelectionIndex());
		int bookSize = selectedBook.getBookSize(translationManager, bibleDao);
		for (int i = 1; i <= bookSize; i++) {
			chapters.add(String.valueOf(i));
		}
		chapters.select(0);
	}
}
