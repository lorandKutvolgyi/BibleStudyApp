package com.lory.biblereader.textpart.toolbar.eventhandler;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.swt.SWT;

import com.lory.biblereader.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.historypart.entity.History;

public class NextBook {

	private BooksComparator booksComparator;
	private History history;
	private BookChanging bookChanging;

	@Inject
	public NextBook(BooksComparator booksComparator, History history, BookChanging bookChanging) {
		this.booksComparator = booksComparator;
		this.history = history;
		this.bookChanging = bookChanging;
	}

	@Execute
	public void execute() {
		bookChanging.change(SWT.ARROW_RIGHT, booksComparator, history);
	}
}
