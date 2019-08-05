package com.lory.biblereader.textpart.toolbar.eventhandler;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.swt.SWT;

import com.lory.biblereader.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.historypart.History;

public class PreviousBook {

	@Inject
	private BooksComparator booksComparator;
	@Inject
	private static History history;
	@Inject
	private static BookChanging bookChanging;

	@Execute
	public void execute() {
		bookChanging.change(SWT.ARROW_LEFT, booksComparator, history);
	}
}
