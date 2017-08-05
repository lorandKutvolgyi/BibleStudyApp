package com.lory.biblereader.parts.textpart;

import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.inject.Inject;

import org.eclipse.e4.core.services.nls.Translation;
import org.eclipse.e4.ui.di.Focus;
import org.eclipse.e4.ui.di.PersistState;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Text;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.i18n.Messages;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.parts.bookspart.eventhandler.BooksKeyListener;
import com.lory.biblereader.parts.textpart.eventhandler.SearchTextVerifyListener;
import com.lory.biblereader.parts.textpart.eventhandler.TextSearchListener;

/**
 * Shows the text of the selected chapter.
 *
 * @author lorandKutvolgyi
 *
 */
public class BibleTextPart implements Observer {
	@Inject
	private BooksKeyListener pagingListener;
	@Inject
	private TextSearchListener textSearchListener;
	@Inject
	private SearchTextVerifyListener searchTextVerifyListener;
	@Inject
	private TextPartManager textPartManager;
	@Inject
	private MessageService messageService;
	@Inject
	@Translation
	private Messages messages;
	private MPart part;
	private Composite parent;
	private StyledText text;
	private Text searchtext;

	@PostConstruct
	public void postConstruct(Composite parent, MPart part) {
		this.part = part;
		this.parent = parent;
		parent.setLayout(new GridLayout(1, true));
		searchtext = new Text(parent, SWT.SEARCH | SWT.ICON_CANCEL | SWT.ICON_SEARCH);
		searchtext.setLayoutData(new GridData(SWT.FILL, SWT.TOP, true, false));
		searchtext.addModifyListener(textSearchListener);
		searchtext.setMessage(messageService.getMessage("searchTextPlaceholder"));
		searchtext.addVerifyListener(searchTextVerifyListener);
		text = new StyledText(parent, SWT.MULTI | SWT.WRAP | SWT.V_SCROLL);
		text.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true));
		text.setEditable(false);
		textSearchListener.setBibleText(text);
		if (CurrentChapter.getCurrentChapter() != null) {
			loadCurrentChapter();
		}
		text.addKeyListener(pagingListener);
		restorePersistedState();
		textPartManager.registerPart(part, this);
	}

	@PersistState
	private void persist(MPart part) {
		if (textPartManager.getActivePart().equals(part)) {
			part.getPersistedState().put("active", "true");
		}
	}

	@Focus
	public void partActivated() {
		if (!part.equals(textPartManager.getActivePart())) {
			textPartManager.activatePart(part);
		}

	}

	private void restorePersistedState() {
		if (Boolean.getBoolean(part.getPersistedState().get("active"))) {
			textPartManager.setActivePart(part);
		}
	}

	@PreDestroy
	public void preDestroy() {
		if (textPartManager.isAnyVisiblePartExcept(part)) {
			textPartManager.activatePart(textPartManager.getAnyVisiblePartExcept(part));
		} else {
			inactivate();
			textPartManager.inactivatePart(part);
		}
	}

	public void inactivate() {
		CurrentChapter.removeObserver(this);
	}

	private void setContent(String text) {
		if (!this.text.isDisposed()) {
			this.text.setText(text);
		}
	}

	@Override
	public void update(Observable observable, Object arg) {
		if (CurrentChapter.getCurrentChapter() != null) {
			loadCurrentChapter();
		}
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
		String wholeText = text.getText();
		int maxLength = 100;
		boolean tooLong = wholeText.length() > maxLength;
		String bibleText = wholeText.isEmpty() ? "" : text.getText(0, tooLong ? maxLength : wholeText.length() - 1);
		return "BibleTextPart\n\ttext: " + bibleText + (tooLong ? "..." : "");
	}

	public void activate() {
		CurrentChapter.setObserver(this);
	}

	public boolean isDisposed() {
		return parent.isDisposed();
	}

}