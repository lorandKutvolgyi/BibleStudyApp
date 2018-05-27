package com.lory.biblereader.parts.leftstack.bookspart.eventhandler;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TreeSelection;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.parts.leftstack.bookspart.chapternumberpopup.ChapterNumberPopupShell;

@Creatable
@Singleton
public class BookSelectionListener implements ISelectionChangedListener {

	@Inject
	private ChapterNumberPopupShell chapterNumberPopupShell;

	private boolean selectionChangeEventNeeded;

	@Override
	public void selectionChanged(SelectionChangedEvent event) {
		if (!selectionChangeEventNeeded) {
			return;
		}
		Object selectedElement = getSelectedElement(event);
		if (selectedElement instanceof Book) {
			chapterNumberPopupShell.init(event, (Book) selectedElement);
			chapterNumberPopupShell.open();
		}
	}

	public void allowSelectionChangeEvent(boolean allow) {
		selectionChangeEventNeeded = allow;
	}

	private Object getSelectedElement(SelectionChangedEvent event) {
		return ((TreeSelection) event.getSelection()).getFirstElement();
	}

	@Override
	public String toString() {
		return "BookSelectionListener\n\tchapterNumberPopupShell: " + chapterNumberPopupShell
				+ "\n\tselectionChangeEventNeeded: " + selectionChangeEventNeeded;
	}
}
