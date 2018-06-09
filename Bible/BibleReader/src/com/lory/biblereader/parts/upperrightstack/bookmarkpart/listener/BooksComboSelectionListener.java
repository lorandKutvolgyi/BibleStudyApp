package com.lory.biblereader.parts.upperrightstack.bookmarkpart.listener;

import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Combo;

import com.lory.biblereader.model.Bible;
import com.lory.biblereader.model.Chapter;

public class BooksComboSelectionListener implements SelectionListener {

	private Bible bible;
	private Combo books;
	private Combo chapters;

	public BooksComboSelectionListener(Combo books, Combo chapters, Bible bible) {
		this.books = books;
		this.chapters = chapters;
		this.bible = bible;
	}

	@Override
	public void widgetSelected(SelectionEvent e) {
		chapters.removeAll();
		for (Chapter chapter : bible.getBooks().get(books.getSelectionIndex()).getChapters()) {
			chapters.add(String.valueOf(chapter.getId()));
		}
		chapters.select(0);
	}

	@Override
	public void widgetDefaultSelected(SelectionEvent e) {
	}
}
