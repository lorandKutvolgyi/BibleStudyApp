package com.lory.biblereader.bookspart.eventhandler;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;

import com.lory.biblereader.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.historypart.entity.History;
import com.lory.biblereader.textpart.toolbar.eventhandler.BookChanging;
import com.lory.biblereader.textpart.toolbar.eventhandler.Paging;

@Creatable
@Singleton
public class BooksKeyListener extends KeyAdapter {

	@Inject
	private BookSelectionListener bookSelectionListener;
	@Inject
	private BooksComparator booksComparator;
	@Inject
	private static History history;
	@Inject
	private static BookChanging bookChanging;
	@Inject
	private static Paging paging;

	private TreeViewer treeViewer;

	@Override
	public void keyPressed(KeyEvent event) {
		bookSelectionListener.allowSelectionChangeEvent(isSpaceOrEnterPressed(event));
		if (isBooksOrderChangingCommand(event)) {
			changeBooksOrder();
			return;
		}
		if (isBookChangingCommand(event)) {
			preventTreeEventTriggering(event);
			changeBook(event);
			return;
		}
		if (isPagingCommand(event)) {
			preventTreeEventTriggering(event);
			page(event);
			return;
		}
	}

	private boolean isSpaceOrEnterPressed(KeyEvent event) {
		return event.keyCode == SWT.SPACE || event.keyCode == SWT.CR;
	}

	private void changeBooksOrder() {
		treeViewer.setComparator(booksComparator.next());
	}

	private void changeBook(KeyEvent event) {
		bookChanging.change(event.keyCode, booksComparator, history);
	}

	private void page(KeyEvent event) {
		paging.paging(event.keyCode, history);
	}

	private boolean isBooksOrderChangingCommand(KeyEvent event) {
		return event.stateMask == SWT.CTRL && event.keyCode == 'o';
	}

	private boolean isBookChangingCommand(KeyEvent event) {
		return event.stateMask == SWT.SHIFT && (event.keyCode == SWT.ARROW_RIGHT || event.keyCode == SWT.ARROW_LEFT);
	}

	private void preventTreeEventTriggering(KeyEvent e) {
		e.doit = false;
	}

	private boolean isPagingCommand(KeyEvent event) {
		return event.stateMask == SWT.ALT && (event.keyCode == SWT.ARROW_RIGHT || event.keyCode == SWT.ARROW_LEFT);
	}

	public void setTreeViewer(TreeViewer treeViewer) {
		this.treeViewer = treeViewer;
	}
}
