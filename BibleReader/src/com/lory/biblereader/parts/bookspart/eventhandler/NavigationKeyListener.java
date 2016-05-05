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
    private final BookSelectionListener selectionListener;

    public NavigationKeyListener(BookSelectionListener selectionListener) {
        this.selectionListener = selectionListener;
    }

    @Override
    public void keyPressed(KeyEvent e) {
        if (e.stateMask != SWT.CTRL && (e.keyCode == SWT.ARROW_UP || e.keyCode == SWT.ARROW_DOWN
                || e.keyCode == SWT.ARROW_RIGHT || e.keyCode == SWT.PAGE_UP || e.keyCode == SWT.PAGE_DOWN
                || e.keyCode >= 'a' && e.keyCode <= 'z')) {
            selectionListener.preventSelectionChangeEvent();
        }
    }
}
