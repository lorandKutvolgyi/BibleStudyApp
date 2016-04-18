package com.lory.eventhandler;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.core.services.nls.Translation;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.e4.ui.workbench.modeling.EPartService;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;

import com.lory.i18n.MessageService;
import com.lory.i18n.Messages;
import com.lory.model.Book;
import com.lory.model.Chapter;
import com.lory.model.CurrentChapter;
import com.lory.view.BibleTextPart;

@Creatable
public class PagingListener extends KeyAdapter {
    @Inject
    private EPartService service;
    @Inject
    @Translation
    private Messages messages;

    @Override
    public void keyPressed(KeyEvent e) {
        if (!isSelectedChapter()) {
            return;
        }
        if (!(e.stateMask == SWT.ALT && (e.keyCode == SWT.ARROW_RIGHT || e.keyCode == SWT.ARROW_LEFT))) {
            return;
        }

        int id = CurrentChapter.getInstance().getId();
        int newId = 0;
        if (e.keyCode == SWT.ARROW_RIGHT) {
            newId = id + 1;
        } else if (e.keyCode == SWT.ARROW_LEFT) {
            newId = id - 1;
        }
        e.doit = false;
        MPart part = service.findPart("biblereader.BibleTextPart");
        BibleTextPart textPart = (BibleTextPart) part.getObject();
        Book book = CurrentChapter.getInstance().getBook();
        if (newId != 0 && newId <= isMax(CurrentChapter.getInstance())) {
            textPart.setContent(book.getChapter(newId).getText());
            part.setLabel(MessageService.getMessage(messages, book.getTitle()) + " " + (newId));
            CurrentChapter.setCurrentChapter(book.getChapter(newId));
        }
    }

    private boolean isSelectedChapter() {
        return CurrentChapter.getInstance() != null;
    }

    private int isMax(Chapter currentChapter) {
        Book book = currentChapter.getBook();
        int max = book.getChapters().size();
        return max;
    }
}
