package com.lory.biblereader.parts.upperrightstack.historypart;

import java.util.Arrays;
import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.e4.ui.model.application.MApplication;
import org.eclipse.e4.ui.workbench.modeling.EModelService;
import org.eclipse.e4.ui.workbench.modeling.EPartService;
import org.eclipse.e4.ui.workbench.modeling.EPartService.PartState;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.RowLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.forms.events.HyperlinkAdapter;
import org.eclipse.ui.forms.events.HyperlinkEvent;
import org.eclipse.ui.forms.widgets.Hyperlink;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.Bible;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.model.dao.BibleDao;
import com.lory.biblereader.parts.leftstack.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.parts.middlestack.textpart.TextPartManager;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkManager;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkSelectionPopup;

public class HistoryPart implements Observer {

	@Inject
	private History history;
	@Inject
	private MessageService messageService;
	@Inject
	private BookMarkManager bookMarkManager;
	@Inject
	private CurrentChapter currentChapter;
	@Inject
	private BooksComparator booksComparator;
	@Inject
	private Bible bible;
	@Inject
	private TranslationManager translationManager;
	@Inject
	private BibleDao bibleDao;
	@Inject
	private TextPartManager textPartManager;
	@Inject
	private static EPartService partService;
	@Inject
	private static EModelService modelService;
	@Inject
	private static MApplication application;

	private Composite parent;
	private ScrolledComposite scrolledComposite;
	private Composite subComposite;

	@PostConstruct
	public void postConstruct(Composite parent) {
		this.parent = parent;
		this.parent.setLayout(new FillLayout());
		createScrolledComposite();
		createSubComposite();
		loadHistory();
		addObserverToHistory();
	}

	@Override
	public void update(Observable o, Object arg) {
		if (isClearHappened()) {
			disposeAllIfNeeded();
			return;
		}
		assert (isAddHappened());
		addNewElement();
	}

	private void createScrolledComposite() {
		scrolledComposite = new ScrolledComposite(parent, SWT.V_SCROLL);
		scrolledComposite.setAlwaysShowScrollBars(false);
		scrolledComposite.setExpandVertical(true);
		scrolledComposite.setExpandHorizontal(true);
		scrolledComposite.setLayout(new FillLayout());
		scrolledComposite.addControlListener(new ControlAdapter() {
			@Override
			public void controlResized(ControlEvent e) {
				setupScroll();
			}
		});
	}

	private void createSubComposite() {
		subComposite = new Composite(scrolledComposite, SWT.NONE);
		subComposite.setLayout(new RowLayout());
		scrolledComposite.setContent(subComposite);
	}

	private void loadHistory() {
		if (!scrolledComposite.isDisposed()) {
			history.getHistory().stream().forEach(chapter -> addNewElement(chapter));
		}
	}

	private void addObserverToHistory() {
		history.addObserver(this);
	}

	private boolean isClearHappened() {
		return history.getHistory().isEmpty();
	}

	private void disposeAllIfNeeded() {
		if (!isHistoryEmpty()) {
			disposeAll();
			removeScroll();
		}
	}

	private boolean isAddHappened() {
		return !isClearHappened();
	}

	private void addNewElement() {
		addNewElement(history.getHistory().getLast());
	}

	private void setupScroll() {
		scrolledComposite
				.setMinSize(subComposite.computeSize(scrolledComposite.getClientArea().width, SWT.DEFAULT, true));
	}

	private void addNewElement(Chapter chapter) {
		createArrowLabel();
		createLink(chapter);
		setupScroll();
		layoutElements();
	}

	private boolean isHistoryEmpty() {
		return subComposite.getChildren().length == 0;
	}

	private void disposeAll() {
		Arrays.asList(subComposite.getChildren()).stream().forEach(control -> control.dispose());
	}

	private void removeScroll() {
		scrolledComposite.setMinSize(null);
	}

	private void createArrowLabel() {
		if (!isFirstElement()) {
			Label label = new Label(subComposite, SWT.NONE);
			label.setText(" -> ");
		}
	}

	private void createLink(Chapter chapter) {
		Hyperlink link = new Hyperlink(subComposite, SWT.NONE);
		link.setBackground(subComposite.getBackground());
		link.setText(messageService.getMessage(chapter.getBook().getTitle()) + "-" + chapter.getId());
		Menu menu = createMenu(link, chapter);
		link.setMenu(menu);
		addListenersToLink(link, chapter, menu);
	}

	private void layoutElements() {
		parent.layout(true, true);
	}

	private boolean isFirstElement() {
		return isHistoryEmpty();
	}

	private Menu createMenu(Hyperlink link, Chapter chapter) {
		Menu menu = new Menu(link);

		MenuItem remove = new MenuItem(menu, SWT.PUSH);
		remove.setText(messageService.getMessage("remove"));
		remove.addListener(SWT.Selection, event -> removeElement(link));

		MenuItem addToBookMark = new MenuItem(menu, SWT.PUSH);
		addToBookMark.setText(messageService.getMessage("newBookMark"));
		addToBookMark.addListener(SWT.Selection, event -> new BookMarkSelectionPopup(messageService, bookMarkManager,
				booksComparator, bible, translationManager, bibleDao).open(chapter));

		return menu;
	}

	private void addListenersToLink(Hyperlink link, Chapter currentChapter, Menu menu) {
		addLinkListener(link, currentChapter);
		addMouseListener(link, menu);
	}

	private void removeElement(Hyperlink link) {
		int linkIndex = getLinkIndex(link);
		removeArrowLabel(linkIndex);
		removeFromHistory(linkIndex);
		removeLink(link);
		setupScroll();
		layoutElements();
	}

	private void addLinkListener(Hyperlink link, Chapter currentChapter) {
		link.addHyperlinkListener(new HyperlinkAdapter() {
			@Override
			public void linkActivated(HyperlinkEvent e) {
				if (isNewTabNeeded(e)) {
					partService.showPart(textPartManager.createNewTextPart(modelService, application),
							PartState.ACTIVATE);
				}
				HistoryPart.this.currentChapter.setChapter(currentChapter);
			}
		});
	}

	private boolean isNewTabNeeded(HyperlinkEvent e) {
		return e.getStateMask() == 786432
				|| (!textPartManager.isAnyActivePart() && !textPartManager.isAnyVisiblePart());
	}

	private void addMouseListener(Hyperlink link, Menu menu) {
		link.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
				if (e.button == 3) {
					menu.setVisible(true);
				}
			}
		});
	}

	private int getLinkIndex(Control link) {
		return Arrays.asList(subComposite.getChildren()).stream().filter(control -> link.equals(control))
				.mapToInt(control -> Arrays.asList(subComposite.getChildren()).indexOf(control)).findFirst().getAsInt();
	}

	private void removeArrowLabel(int linkIndex) {
		if (linkIndex != subComposite.getChildren().length - 1) {
			subComposite.getChildren()[linkIndex + 1].dispose();
		} else if (subComposite.getChildren().length != 1) {
			subComposite.getChildren()[linkIndex - 1].dispose();
		} else {
			removeScroll();
		}
	}

	private void removeFromHistory(int linkIndex) {
		history.removeElement(linkIndex / 2);
	}

	private void removeLink(Hyperlink link) {
		link.dispose();
	}
}