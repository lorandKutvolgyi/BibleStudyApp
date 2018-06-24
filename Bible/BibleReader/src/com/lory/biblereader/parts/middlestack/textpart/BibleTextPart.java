package com.lory.biblereader.parts.middlestack.textpart;

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
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Text;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.ChapterContext;
import com.lory.biblereader.model.dao.BibleDao;
import com.lory.biblereader.parts.leftstack.bookspart.eventhandler.BooksKeyListener;
import com.lory.biblereader.parts.middlestack.textpart.contextmenu.JavaScriptCreator;
import com.lory.biblereader.parts.middlestack.textpart.eventhandler.SearchTextVerifyListener;
import com.lory.biblereader.parts.middlestack.textpart.eventhandler.TextSearchListener;

public class BibleTextPart implements Observer {

	// Must be static because if every each part implementation use different one
	// it does not work correctly
	private static EMenuService menuService;

	private MPart part;
	private Composite parent;
	private Browser text;
	private Label translationLabel;
	private final BooksKeyListener booksKeyListener;
	private final TextPartManager textPartManager;
	private final MessageService messageService;
	private final TranslationManager translationManager;
	private final BibleDao bibleDao;
	protected TextSearchListener textSearchListener;
	protected SearchTextVerifyListener searchTextVerifyListener;

	@Inject
	public BibleTextPart(BibleTextPartServiceFacade services) {
		booksKeyListener = services.getBooksKeyListener();
		textPartManager = services.getTextPartManager();
		messageService = services.getMessageService();
		translationManager = services.getTranslationManager();
		bibleDao = services.getBibleDao();
		textSearchListener = services.getTextSearchListener();
		searchTextVerifyListener = services.getSearchTextVerifyListener();
	}

	@PostConstruct
	public void postConstruct(Composite parent, MPart part, EMenuService menuService) {
		initMenuService(menuService);
		initPart(part);
		initParent(parent);
		createTranslationLabel(parent);
		createSearchText(parent);
		createText(parent);
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

	private void createText(Composite parent) {
		text = new Browser(parent, SWT.NONE);
		text.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true));
		text.addKeyListener(booksKeyListener);
		text.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent event) {
				if (event.button == 3) {
					String script = new JavaScriptCreator(bibleDao).getVerseIdScript(event.x, event.y);
					String verseId = (String) text.evaluate(script);
					textPartManager.setComparingVerseId(verseId);
				}
			}

		});
		textSearchListener.setBibleText(text);
	}

	private void registerPart(MPart part) {
		ChapterContext chapter = null;
		if (part.getPersistedState().get("title") != null) {
			chapter = new ChapterContext(part.getPersistedState().get("id"), part.getPersistedState().get("title"),
					part.getPersistedState().get("translation"));
		}
		textPartManager.registerPart(part, this, chapter);
		showTranslation(chapter);
	}

	public void showTranslation(ChapterContext chapter) {
		if (chapter == null) {
			if (!translationManager.getActiveTranslationDescription().isEmpty()) {
				translationLabel.setText(translationManager.getActiveTranslationDescription());
			}
		} else {
			translationLabel.setText(translationManager.getTranslationDescription(chapter.getTranslation()));
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
		if (!this.text.isDisposed()) {
			this.text.setText(text);
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
		BibleTextPart.menuService.registerContextMenu(text, "reader.popupmenu.textpart.context");
	}
}