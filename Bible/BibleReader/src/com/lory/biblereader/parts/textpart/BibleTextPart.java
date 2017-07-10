package com.lory.biblereader.parts.textpart;

import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.inject.Inject;

import org.eclipse.e4.core.services.nls.Translation;
import org.eclipse.e4.ui.di.PersistState;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.e4.ui.workbench.modeling.EPartService;
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
import com.lory.biblereader.parts.textpart.eventhandler.TextPartListener;
import com.lory.biblereader.parts.textpart.eventhandler.TextSearchListener;

/**
 * Shows the text of the selected chapter.
 *
 * @author lorandKutvolgyi
 *
 */
public class BibleTextPart implements Observer {
	private StyledText text;
	private Text searchtext;
	@Inject
	@Translation
	private Messages messages;
	private MPart part;
	@Inject
	private BooksKeyListener pagingListener;
	@Inject
	private MessageService messageService;
	@Inject
	private TextPartListener textPartListener;
	@Inject
	private TextSearchListener textSearchListener;
	private Composite parent;
	@Inject
	private EPartService partService;
	@Inject
	private SearchTextVerifyListener searchTextVerifyListener;
	@Inject
	private TextPartManager textPartManager;

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
		partService.addPartListener(textPartListener);
	}

	@PersistState
	private void persist(MPart part) {
		part.getPersistedState().put("active", "true");
	}

	private void restorePersistedState() {
		if (Boolean.getBoolean(part.getPersistedState().get("active"))) {
			textPartManager.setActivePart(part);
			// CurrentChapter.setObserver(this);
		}
	}

	@PreDestroy
	public void preDestroy() {
		inactivate();
		textPartManager.inactivatePart(part);
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
		String wholeText = text.getText();
		boolean tooLong = wholeText.length() > 100;
		String bibleText = wholeText.isEmpty() ? "" : text.getText(0, tooLong ? 100 : wholeText.length() - 1);
		return "BibleTextPart\n\ttext: " + bibleText + (tooLong ? "..." : "");
	}

	public void activate() {
		CurrentChapter.setObserver(this);
	}

	public boolean isDisposed() {
		return parent.isDisposed();
	}

}