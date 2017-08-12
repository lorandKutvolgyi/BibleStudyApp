package com.lory.biblereader.parts.bookspart.eventhandler;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;

import com.lory.biblereader.parts.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.parts.mapstack.historypart.History;
import com.lory.biblereader.toolbar.eventhandler.BookChanging;
import com.lory.biblereader.toolbar.eventhandler.Paging;

/**
 * EventHandler for key events triggered on BookTree.
 *
 * @author lorandKutvolgyi
 *
 */
@Creatable
@Singleton
public class BooksKeyListener extends KeyAdapter {
	@Inject
	private BookSelectionListener bookSelectionListener;
	@Inject
	private BooksComparator booksComparator;
	private TreeViewer treeViewer;
	@Inject
	private static History history;

	@Override
	public void keyPressed(KeyEvent event) {
		bookSelectionListener.allowSelectionChangeEvent(event.keyCode == SWT.SPACE || event.keyCode == SWT.CR);
		if (event.stateMask == SWT.CTRL && event.keyCode == 'o') {
			treeViewer.setComparator(booksComparator.next());
			return;
		}
		if (isBookChangingCommand(event)) {
			preventTreeEventTriggering(event);
			BookChanging.change(event.keyCode, booksComparator, history);
			return;
		}
		if (isPagingCommand(event)) {
			preventTreeEventTriggering(event);
			Paging.paging(event.keyCode, history);
			return;
		}
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
