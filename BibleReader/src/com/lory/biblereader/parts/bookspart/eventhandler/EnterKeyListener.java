package com.lory.biblereader.parts.bookspart.eventhandler;

import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;

/**
 * Event handler for Enter key.
 * 
 * @author lorandKutvolgyi
 *
 */
public class EnterKeyListener extends KeyAdapter {
    TreeViewer books;

    public EnterKeyListener(TreeViewer books) {
        this.books = books;
    }

    @Override
    public void keyPressed(KeyEvent e) {
        if (e.keyCode == SWT.CR && !books.getSelection().isEmpty()) {
            books.getTree().notifyListeners(SWT.Selection, null);
        }
    }
}
