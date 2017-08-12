package com.lory.biblereader.toolbar.eventhandler;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.swt.SWT;

import com.lory.biblereader.parts.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.parts.mapstack.historypart.History;

public class NextBook {
	@Inject
	private BooksComparator booksComparator;
	@Inject
	private static History history;

	@Execute
	public void execute() {
		BookChanging.change(SWT.ARROW_RIGHT, booksComparator, history);
	}
}
