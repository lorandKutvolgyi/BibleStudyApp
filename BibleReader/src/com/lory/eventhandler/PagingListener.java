package com.lory.eventhandler;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.e4.ui.workbench.modeling.EPartService;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;

import com.lory.i18n.MessageService;
import com.lory.model.Book;
import com.lory.model.Chapter;
import com.lory.model.CurrentChapter;
import com.lory.view.BibleTextPart;

/**
 * EventHandler for paging event.
 *
 * @author lorandKutvolgyi
 *
 */
@Creatable
public class PagingListener extends KeyAdapter {
    @Inject
    private EPartService partService;
    @Inject
    private MessageService messageService;

    @Override
    public void keyPressed(KeyEvent e) {
        if (!isSelectedChapter() || !isPagingCommand(e)) {
            return;
        }
        int id = CurrentChapter.getInstance().getId();
        preventTreeEventTriggering(e);
        changeTextPartContent(getNewId(e, id));
    }

    private boolean isSelectedChapter() {
        return CurrentChapter.getInstance() != null;
    }

    private boolean isPagingCommand(KeyEvent e) {
        return e.stateMask == SWT.ALT && (e.keyCode == SWT.ARROW_RIGHT || e.keyCode == SWT.ARROW_LEFT);
    }

    private void preventTreeEventTriggering(KeyEvent e) {
        e.doit = false;
    }

    private int getNewId(KeyEvent e, int id) {
        int newId = 0;
        if (e.keyCode == SWT.ARROW_RIGHT) {
            newId = id + 1;
        } else if (e.keyCode == SWT.ARROW_LEFT) {
            newId = id - 1;
        }
        return newId;
    }

    private void changeTextPartContent(int newId) {
        MPart part = partService.findPart("biblereader.BibleTextPart");
        BibleTextPart textPart = (BibleTextPart) part.getObject();
        Book book = CurrentChapter.getInstance().getBook();
        if (newId != 0 && newId <= isMax(CurrentChapter.getInstance())) {
            textPart.setContent(book.getChapter(newId).getText());
            part.setLabel(messageService.getMessage(book.getTitle()) + " " + (newId));
            CurrentChapter.setCurrentChapter(book.getChapter(newId));
        }
    }

    private int isMax(Chapter currentChapter) {
        Book book = currentChapter.getBook();
        int max = book.getChapters().size();
        return max;
    }
}
