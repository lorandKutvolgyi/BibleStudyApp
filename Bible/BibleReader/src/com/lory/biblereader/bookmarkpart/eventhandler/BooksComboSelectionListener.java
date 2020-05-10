package com.lory.biblereader.bookmarkpart.eventhandler;

import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.Combo;

import com.lory.biblereader.bookspart.Bible;
import com.lory.biblereader.bookspart.Book;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.textpart.repository.TextRepository;

public class BooksComboSelectionListener extends SelectionAdapter {

	private Bible bible;
	private Combo books;
	private Combo chapters;
	private TranslationManager translationManager;
	private TextRepository textRepository;

	public BooksComboSelectionListener(Combo books, Combo chapters, Bible bible, TranslationManager translationManager,
			TextRepository textRepository) {
		this.books = books;
		this.chapters = chapters;
		this.bible = bible;
		this.translationManager = translationManager;
		this.textRepository = textRepository;
	}

	@Override
	public void widgetSelected(SelectionEvent e) {
		if (chapters != null) {
			chapters.removeAll();
		}
		Book selectedBook = bible.getBooks().get(books.getSelectionIndex());
		int bookSize = selectedBook.getBookSize(translationManager, textRepository);
		for (int i = 1; i <= bookSize; i++) {
			chapters.add(String.valueOf(i));
		}
		chapters.select(0);
	}
}
