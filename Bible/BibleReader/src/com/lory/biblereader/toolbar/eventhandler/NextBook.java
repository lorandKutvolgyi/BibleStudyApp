package com.lory.biblereader.toolbar.eventhandler;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.swt.SWT;

import com.lory.biblereader.parts.leftstack.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.parts.upperrightstack.historypart.History;

public class NextBook {
	@Inject
	private BooksComparator booksComparator;
	@Inject
	private static History history;
	@Inject
	private static BookChanging bookChanging;

	@Execute
	public void execute() {
		bookChanging.change(SWT.ARROW_RIGHT, booksComparator, history);
	}
}
