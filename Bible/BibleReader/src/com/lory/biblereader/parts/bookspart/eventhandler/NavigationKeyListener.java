package com.lory.biblereader.parts.bookspart.eventhandler;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;

/**
 * Event handler for keys which navigates in the tree and trigger
 * selectionChangeEvent.
 *
 * @author lorandKutvolgyi
 *
 */
public class NavigationKeyListener extends KeyAdapter {
    private final BookSelectionListener bookSelectionListener;

    public NavigationKeyListener(BookSelectionListener selectionListener) {
        this.bookSelectionListener = selectionListener;
    }

    @Override
    public void keyPressed(KeyEvent event) {
        if (event.keyCode == SWT.ARROW_UP || event.keyCode == SWT.ARROW_DOWN || event.keyCode == SWT.ARROW_RIGHT
                || event.keyCode == SWT.PAGE_UP || event.keyCode == SWT.PAGE_DOWN
                || event.keyCode >= 'a' && event.keyCode <= 'z' || event.keyCode == '.') {
            bookSelectionListener.preventSelectionChangeEvent();
        }
    }
}
