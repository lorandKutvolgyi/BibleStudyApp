package com.lory.biblereader.parts.textpart;

import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.e4.core.services.nls.Translation;
import org.eclipse.e4.ui.di.PersistState;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.e4.ui.workbench.modeling.EPartService;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Text;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.i18n.Messages;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.parts.bookspart.eventhandler.BooksKeyListener;
import com.lory.biblereader.parts.textpart.eventhandler.TextPartListener;

/**
 * Shows the text of the selected chapter.
 *
 * @author lorandKutvolgyi
 *
 */
public class BibleTextPart implements Observer {
	private Text text;
	@Inject
	@Translation
	private Messages messages;
	private MPart part;
	@Inject
	private BooksKeyListener pagingListener;
	@Inject
	private MessageService messageService;
	@Inject
	private TextPartManager textPartManager;
	@Inject
	private TextPartListener textPartListener;
	private Composite parent;
	@Inject
	private EPartService partService;

	@PostConstruct
	public void postConstruct(Composite parent, MPart part) {
		this.part = part;
		this.parent = parent;
		text = new Text(parent, SWT.MULTI | SWT.WRAP | SWT.V_SCROLL);
		text.setEditable(false);
		if (CurrentChapter.getCurrentChapter() != null) {
			loadCurrentChapter();
		}
		text.addKeyListener(pagingListener);
		restorePersistedState();
		textPartManager.registerPart(part, this);
		partService.addPartListener(textPartListener);
	}

	@PersistState
	private void persist(MPart part) {
		part.getPersistedState().put("active", "true");
	}

	private void restorePersistedState() {
		if (Boolean.getBoolean(part.getPersistedState().get("active"))) {
			textPartManager.setActivePart(part);
			CurrentChapter.setObserver(this);
		}
	}

	public void inactivate() {
		CurrentChapter.removeObserver(this);
	}

	private void setContent(String text) {
		this.text.setText(text);
	}

	@Override
	public void update(Observable observable, Object arg) {
		loadCurrentChapter();
	}

	private void loadCurrentChapter() {
		setContent(CurrentChapter.getCurrentChapter().getText());
		refreshTitle();
	}

	private void refreshTitle() {
		part.setLabel(messageService.getMessage(CurrentChapter.getCurrentChapter().getBook().getTitle()) + " "
				+ CurrentChapter.getCurrentChapter().getId());
	}

	@Override
	public String toString() {
		if (text == null || text.isDisposed()) {
			return "";
		}
		return "BibleTextPart\n\ttext: " + text.getText(0, 101) + (text.getText().length() > 100 ? "..." : "");
	}

	public void activate() {
		CurrentChapter.setObserver(this);
	}

	public boolean isDisposed() {
		return parent.isDisposed();
	}

}