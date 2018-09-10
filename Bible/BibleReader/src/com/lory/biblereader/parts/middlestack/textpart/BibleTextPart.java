package com.lory.biblereader.parts.middlestack.textpart;

import java.util.Map;
import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.inject.Inject;

import org.eclipse.e4.ui.di.Focus;
import org.eclipse.e4.ui.di.PersistState;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.e4.ui.services.EMenuService;
import org.eclipse.swt.SWT;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Text;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.ChapterContext;
import com.lory.biblereader.parts.leftstack.bookspart.eventhandler.BooksKeyListener;
import com.lory.biblereader.parts.middlestack.textpart.eventhandler.BrowserMouseListener;
import com.lory.biblereader.parts.middlestack.textpart.eventhandler.BrowserProgressListener;
import com.lory.biblereader.parts.middlestack.textpart.eventhandler.SearchTextVerifyListener;
import com.lory.biblereader.parts.middlestack.textpart.eventhandler.TextSearchListener;

public class BibleTextPart implements Observer {

	// Must be static because if every each part implementation use different one
	// it does not work correctly
	private static EMenuService menuService;

	private MPart part;
	private Composite parent;
	private Browser browser;
	private Label translationLabel;
	private final BooksKeyListener booksKeyListener;
	private final TextPartManager textPartManager;
	private final MessageService messageService;
	private final TranslationManager translationManager;
	private final TextSearchListener textSearchListener;
	private final SearchTextVerifyListener searchTextVerifyListener;
	private final BrowserMouseListener browserMouseListener;
	private final BrowserProgressListener browserProgressListener;

	@Inject
	public BibleTextPart(BibleTextPartServices services) {
		booksKeyListener = services.getBooksKeyListener();
		textPartManager = services.getTextPartManager();
		messageService = services.getMessageService();
		translationManager = services.getTranslationManager();
		textSearchListener = services.getTextSearchListener();
		searchTextVerifyListener = services.getSearchTextVerifyListener();
		browserMouseListener = services.getBrowserMouseListener();
		browserProgressListener = services.getBrowserProgressListener();

	}

	@PostConstruct
	public void postConstruct(Composite parent, MPart part, EMenuService menuService) {
		initMenuService(menuService);
		initPart(part);
		initParent(parent);
		createTranslationLabel(parent);
		createSearchText(parent);
		createBrowser(parent);
		registerPart(part);
		registerMenu();
	}

	private void initMenuService(EMenuService menuService) {
		if (BibleTextPart.menuService == null) {
			BibleTextPart.menuService = menuService;
		}
	}

	private void initPart(MPart part) {
		this.part = part;
	}

	private void initParent(Composite parent) {
		this.parent = parent;
		parent.setLayout(new GridLayout(1, true));
	}

	private void createTranslationLabel(Composite parent) {
		translationLabel = new Label(parent, SWT.NONE);
		translationLabel.setLayoutData(new GridData(SWT.FILL, SWT.TOP, true, false));
	}

	private Text createSearchText(Composite parent) {
		Text searchtext = new Text(parent, SWT.SEARCH | SWT.ICON_CANCEL);
		searchtext.setLayoutData(new GridData(SWT.FILL, SWT.TOP, true, false));
		searchtext.addModifyListener(textSearchListener);
		searchtext.setMessage(messageService.getMessage("searchTextPlaceholder"));
		searchtext.addVerifyListener(searchTextVerifyListener);
		return searchtext;
	}

	private void createBrowser(Composite parent) {
		browser = new Browser(parent, SWT.NONE);
		browser.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true));
		browser.addKeyListener(booksKeyListener);
		browser.addMouseListener(browserMouseListener);
		browser.addProgressListener(browserProgressListener);
		textSearchListener.setBrowser(browser);
	}

	private void registerPart(MPart part) {
		ChapterContext chapter = null;
		Map<String, String> persistedState = part.getPersistedState();
		if (persistedState.get("title") != null) {
			chapter = new ChapterContext(persistedState.get("id"), persistedState.get("title"),
					persistedState.get("translation"));
		}
		textPartManager.registerPart(part, this, chapter);
		showTranslation(chapter);
	}

	public void showTranslation(ChapterContext chapter) {
		if (chapter != null) {
			translationLabel.setText(translationManager.getTranslationDescription(chapter.getTranslation()));
		} else if (!translationManager.getActiveTranslationDescription().isEmpty()) {
			translationLabel.setText(translationManager.getActiveTranslationDescription());
		}
	}

	public void showTranslation(Chapter chapter) {
		ChapterContext chapterContext = new ChapterContext(String.valueOf(chapter.getId()),
				chapter.getBook().getTitle(), chapter.getTranslation());
		showTranslation(chapterContext);
	}

	@Focus
	public void partActivated() {
		if (!part.equals(textPartManager.getActivePart())) {
			textPartManager.activatePart(part);
		}
	}

	@PersistState
	private void persist(MPart part) {
		Chapter chapter = textPartManager.getChapters().get(part);
		if (chapter != null) {
			part.getPersistedState().put("title", chapter.getBook().getTitle());
			part.getPersistedState().put("id", String.valueOf(chapter.getId()));
			part.getPersistedState().put("translation", chapter.getTranslation());
		}
	}

	@PreDestroy
	public void preDestroy() {
		textPartManager.removePart(part);
		if (textPartManager.isAnyVisiblePartExcept(part)) {
			textPartManager.activatePart(textPartManager.getAnyVisiblePartExcept(part));
		}
	}

	public void setContent(String text) {
		if (!this.browser.isDisposed()) {
			this.browser.setText("<body>" + text + "</body>");
			this.browser.setData("<body>" + text + "</body>");
		}
	}

	@Override
	public void update(Observable observable, Object arg) {
		textPartManager.loadCurrentChapter(part);
	}

	public void refreshTitle(String bookTitle, int chapterId) {
		part.setLabel(messageService.getMessage(bookTitle) + " " + chapterId);
	}

	@Override
	public String toString() {
		return "BibleTextPart: " + (part == null || part.getLabel() == null ? "null" : part.getLabel());
	}

	public boolean isDisposed() {
		return parent.isDisposed();
	}

	private void registerMenu() {
		menuService.registerContextMenu(browser, "reader.popupmenu.textpart.context");
	}
}