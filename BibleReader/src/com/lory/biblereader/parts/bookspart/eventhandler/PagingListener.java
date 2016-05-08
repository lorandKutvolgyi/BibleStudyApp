package com.lory.biblereader.parts.bookspart.eventhandler;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.CurrentChapter;

/**
 * EventHandler for paging event.
 *
 * @author lorandKutvolgyi
 *
 */
@Creatable
public class PagingListener extends KeyAdapter {

    @Override
    public void keyPressed(KeyEvent event) {
        if (!isSelectedChapter() || !isPagingCommand(event)) {
            return;
        }
        preventTreeEventTriggering(event);
        int id = CurrentChapter.getCurrentChapter().getId();
        changeCurrentChapter(getNewId(event, id));
    }

    private boolean isSelectedChapter() {
        return CurrentChapter.getCurrentChapter() != null;
    }

    private boolean isPagingCommand(KeyEvent event) {
        return event.stateMask == SWT.ALT && (event.keyCode == SWT.ARROW_RIGHT || event.keyCode == SWT.ARROW_LEFT);
    }

    private void preventTreeEventTriggering(KeyEvent e) {
        e.doit = false;
    }

    private int getNewId(KeyEvent event, int id) {
        int newId = id;
        if (event.keyCode == SWT.ARROW_RIGHT) {
            newId++;
        } else if (event.keyCode == SWT.ARROW_LEFT) {
            newId--;
        }
        return newId;
    }

    private void changeCurrentChapter(int newId) {
        Chapter currentChapter = CurrentChapter.getCurrentChapter();
        Book book = currentChapter.getBook();
        if (newId > 0 && newId <= isMax(book)) {
            CurrentChapter.setCurrentChapter(book.getChapter(newId));
        }
    }

    private int isMax(Book book) {
        int max = book.getChapters().size();
        return max;
    }
}
