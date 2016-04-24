package com.lory.biblereader.perspective.parts.textpart;

import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.e4.core.services.nls.Translation;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Text;

import com.lory.biblereader.perspective.i18n.MessageService;
import com.lory.biblereader.perspective.i18n.Messages;
import com.lory.biblereader.perspective.model.CurrentChapter;
import com.lory.biblereader.perspective.parts.bookspart.eventhandler.PagingListener;

/**
 * Shows the text of the selected chapter.
 *
 * @author lorandKutvolgyi
 *
 */
public final class BibleTextPart implements Observer {
    private Text text;
    @Inject
    @Translation
    private Messages messages;
    private MPart part;
    @Inject
    private PagingListener pagingListener;
    @Inject
    private MessageService messageService;

    @PostConstruct
    public void postConstruct(Composite parent, MPart part) {
        this.part = part;
        text = new Text(parent, SWT.MULTI | SWT.BORDER | SWT.WRAP | SWT.V_SCROLL);
        text.setEditable(false);
        CurrentChapter.setObserver(this);
        if (CurrentChapter.getInstance() != null) {
            loadCurrentChapter();
        }
        text.addKeyListener(pagingListener);
    }

    /**
     * Place the text-input into the Part.
     *
     * @param text text to be shown in the part
     */
    public void setContent(String text) {
        this.text.setText(text);
    }

    @Override
    public void update(Observable observable, Object arg) {
        loadCurrentChapter();
    }

    private void loadCurrentChapter() {
        setContent(CurrentChapter.getInstance().getText());
        refreshTitle();
    }

    private void refreshTitle() {
        part.setLabel(messageService.getMessage(CurrentChapter.getInstance().getBook().getTitle()) + " "
                + CurrentChapter.getInstance().getId());
    }

    @Override
    public String toString() {
        return "BibleTextPart\n\ttext: " + (text != null ? text.getText(0, 200) : "");
    }
}