package com.lory.biblereader.parts.upperrightstack.bookmarkpart.listener;

import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Combo;

import com.lory.biblereader.model.Bible;
import com.lory.biblereader.model.Chapter;

public class BooksComboSelectionListener implements SelectionListener {

	private Combo chapters;
	private Combo books;

	public BooksComboSelectionListener(Combo books, Combo chapters) {
		this.books = books;
		this.chapters = chapters;
	}

	@Override
	public void widgetSelected(SelectionEvent e) {
		chapters.removeAll();
		for (Chapter chapter : Bible.getBooks().get(books.getSelectionIndex()).getChapters()) {
			chapters.add(String.valueOf(chapter.getId()));
		}
		chapters.select(0);
	}

	@Override
	public void widgetDefaultSelected(SelectionEvent e) {
	}
}
