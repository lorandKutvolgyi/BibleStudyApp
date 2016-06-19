package com.lory.biblereader.parts.bookspart.chapternumberpopup.eventhandler;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.parts.bookspart.chapternumberpopup.ChapterNumberPopupShell;

/**
 * Event handler for chapter number selection.
 *
 * @author lorandKutvolgyi
 *
 */
public class ChapterNumberMouseListener extends MouseAdapter {
    private final Book book;
    private final Label label;
    private final int chapterId;
    private final ChapterNumberPopupShell shell;

    public ChapterNumberMouseListener(Book book, Label label, int chapterId, ChapterNumberPopupShell shell) {
        this.book = book;
        this.label = label;
        this.chapterId = chapterId;
        this.shell = shell;
    }

    @Override
    public void mouseDown(MouseEvent event) {
        CurrentChapter.setCurrentChapter(book.getChapter(chapterId));
        label.setForeground(Display.getCurrent().getSystemColor(SWT.COLOR_GRAY));
        if (event.data == null) {
            closeShell();
        } else {
            closeShellDelayed((int) event.data);
        }
    }

    private void closeShell() {
        shell.close();
    }

    private void closeShellDelayed(int delay) {
        Display.getCurrent().timerExec(delay, (() -> closeShell()));
    }
}
