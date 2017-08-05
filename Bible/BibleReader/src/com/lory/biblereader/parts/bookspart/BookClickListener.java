package com.lory.biblereader.parts.bookspart;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;

import com.lory.biblereader.parts.bookspart.eventhandler.BookSelectionListener;

/**
 * EventHandler for mouse click events triggered on BookTree.
 *
 * @author lorandKutvolgyi
 *
 */
@Creatable
@Singleton
public class BookClickListener extends MouseAdapter {
	@Inject
	private BookSelectionListener bookSelectionListener;

	@Override
	public void mouseDown(MouseEvent e) {
		bookSelectionListener.allowSelectionChangeEvent(true);
	}

}
