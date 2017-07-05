package com.lory.biblereader.toolbar.eventhandler;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.swt.SWT;

import com.lory.biblereader.parts.bookspart.treesorter.BooksComparator;

public class PreviousBook {
	@Inject
	private BooksComparator booksComparator;

	@Execute
	public void execute() {
		BookChanging.change(SWT.ARROW_LEFT, booksComparator);
	}
}