package com.lory.view;

import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.e4.core.services.nls.Translation;
import org.eclipse.e4.ui.model.application.MApplication;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.e4.ui.model.application.ui.basic.MWindow;
import org.eclipse.e4.ui.workbench.modeling.EModelService;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Text;

import com.lory.i18n.MessageService;
import com.lory.i18n.Messages;
import com.lory.model.CurrentChapter;

/**
 * Shows the text of the selected chapter.
 *
 * @author lorandKutvolgyi
 *
 */
public final class BibleTextPart implements Observer {
    private Text text;
    @Inject
    private MApplication application;
    @Inject
    private EModelService modelService;
    @Inject
    @Translation
    private Messages messages;
    private MPart part;

    @PostConstruct
    public void postConstruct(Composite parent, MPart part) {
        this.part = part;
        text = new Text(parent, SWT.MULTI | SWT.BORDER | SWT.WRAP | SWT.V_SCROLL);
        text.setEditable(false);
        MWindow window = (MWindow) modelService.find("readerWindow", application);
        window.setLabel(MessageService.getMessage(messages, "Bible_Study_Application"));
        CurrentChapter.initialize(this);
        if (CurrentChapter.getInstance() != null) {
            loadCurrentChapter();
        }
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
        part.setLabel(MessageService.getMessage(messages, CurrentChapter.getInstance().getBook().getTitle()) + " "
                + CurrentChapter.getInstance().getId());
    }

    @Override
    public String toString() {
        return "BibleTextPart\n\ttext: " + text.getText(0, 200);
    }
}