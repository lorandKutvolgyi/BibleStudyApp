package com.lory.biblereader.parts.bookspart.eventhandler;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.ui.workbench.modeling.EPartService;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TreeSelection;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.parts.bookspart.chapternumberpopup.ChapterNumberPopupShell;
import com.lory.biblereader.parts.textpart.TextPartManager;

/**
 * Event handler for book selection event.
 *
 * @author lorandKutvolgyi
 *
 */
@Creatable
@Singleton
public class BookSelectionListener implements ISelectionChangedListener {

	private boolean selectionChangeEventNotNeeded;
	private ChapterNumberPopupShell chapterNumberPopupShell;
	@Inject
	private EPartService partService;
	@Inject
	private TextPartManager textPartManager;

	@Override
	public void selectionChanged(SelectionChangedEvent event) {
		if (selectionChangeEventNotNeeded) {
			selectionChangeEventNotNeeded = false;
			return;
		}
		Object selectedElement = getSelectedElement(event);
		if (selectedElement instanceof Book) {
			chapterNumberPopupShell = new ChapterNumberPopupShell(event, (Book) selectedElement, partService,
					textPartManager);
			chapterNumberPopupShell.open();
		}
	}

	/**
	 * Prevent triggering the selection change event.
	 */
	public void preventSelectionChangeEvent() {
		selectionChangeEventNotNeeded = true;
	}

	private Object getSelectedElement(SelectionChangedEvent event) {
		return ((TreeSelection) event.getSelection()).getFirstElement();
	}

	@Override
	public String toString() {
		return "BookSelectionListener\n\tchapterNumberPopupShell: " + chapterNumberPopupShell
				+ "\n\tselectionChangeEventNotNeeded: " + selectionChangeEventNotNeeded;
	}
}
