package com.lory.eventhandler;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TreeSelection;

import com.lory.model.Book;
import com.lory.view.ChapterNumberPopupShell;

/**
 * Event handler for book selection event.
 *
 * @author lorandKutvolgyi
 *
 */
@Creatable
public class BookSelectionListener implements ISelectionChangedListener {

    private boolean selectionChangeEventNotNeeded;
    private ChapterNumberPopupShell chapterNumberPopupShell;

    @Override
    public void selectionChanged(SelectionChangedEvent event) {
        if (chapterNumberPopupShell != null) {
            chapterNumberPopupShell.close();
        }
        if (selectionChangeEventNotNeeded) {
            selectionChangeEventNotNeeded = false;
            return;
        }
        Object selectedElement = getSelectedElement(event);
        if (selectedElement instanceof Book) {
            chapterNumberPopupShell = new ChapterNumberPopupShell(event, (Book) selectedElement);
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
