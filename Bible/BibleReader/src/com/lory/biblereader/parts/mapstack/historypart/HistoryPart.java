
package com.lory.biblereader.parts.mapstack.historypart;

import java.util.Arrays;
import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

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
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.parts.mapstack.bookmarkpart.BookMarkManager;
import com.lory.biblereader.parts.mapstack.bookmarkpart.BookMarkSelectionPopup;

public class HistoryPart implements Observer {
	@Inject
	private History history;
	@Inject
	private MessageService messageService;
	@Inject
	private BookMarkManager bookMarkManager;

	private Composite parent;
	private ScrolledComposite scrolled;
	private Composite subComposite;

	@PostConstruct
	public void postConstruct(Composite parent) {
		this.parent = parent;
		this.parent.setLayout(new FillLayout());
		createScrolledComposite();
		createSubComposite();
		scrolled.setContent(subComposite);
		this.loadHistory();
		history.addObserver(this);
	}

	private void createScrolledComposite() {
		scrolled = new ScrolledComposite(parent, SWT.V_SCROLL);
		scrolled.setAlwaysShowScrollBars(false);
		scrolled.setExpandVertical(true);
		scrolled.setExpandHorizontal(true);
		scrolled.setLayout(new FillLayout());
		scrolled.addControlListener(new ControlAdapter() {
			@Override
			public void controlResized(ControlEvent e) {
				setupScroll();
			}
		});
	}

	private void createSubComposite() {
		subComposite = new Composite(scrolled, SWT.NONE);
		subComposite.setLayout(new RowLayout());
	}

	private void loadHistory() {
		history.getHistory().stream().forEach(chapter -> {
			addNewElement(chapter);
		});
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

	private boolean isClearHappened() {
		return history.getHistory().isEmpty();
	}

	private void disposeAllIfNeeded() {
		if (!isHistoryEmpty()) {
			disposeAll();
			removeScroll();
		}
	}

	private void disposeAll() {
		Arrays.asList(subComposite.getChildren()).stream().forEach(control -> control.dispose());
	}

	private void removeScroll() {
		scrolled.setMinSize(null);
	}

	private boolean isHistoryEmpty() {
		return subComposite.getChildren().length == 0;
	}

	private boolean isAddHappened() {
		return !isClearHappened();
	}

	private void addNewElement() {
		addNewElement(history.getHistory().getLast());
	}

	private void addNewElement(Chapter chapter) {
		createArrowLabel();
		createLink(chapter);
		setupScroll();
		layoutElements();
	}

	private void createArrowLabel() {
		if (!isFirstElement()) {
			Label label = new Label(subComposite, SWT.NONE);
			label.setText(" -> ");
		}
	}

	private boolean isFirstElement() {
		return isHistoryEmpty();
	}

	private void createLink(Chapter chapter) {
		Hyperlink link = new Hyperlink(subComposite, SWT.NONE);
		link.setBackground(subComposite.getBackground());
		link.setText(messageService.getMessage(chapter.getBook().getTitle()) + "-" + chapter.getId());
		Menu menu = createMenu(link, chapter);
		link.setMenu(menu);
		addListenersToLink(link, chapter, menu);
	}

	private Menu createMenu(Hyperlink link, Chapter chapter) {
		Menu menu = new Menu(link);

		MenuItem remove = new MenuItem(menu, SWT.PUSH);
		remove.setText(messageService.getMessage("remove"));
		remove.addListener(SWT.Selection, event -> {
			removeElement(link);
		});

		MenuItem addToBookMark = new MenuItem(menu, SWT.PUSH);
		addToBookMark.setText("Add bookmark");
		addToBookMark.addListener(SWT.Selection, event -> {
			new BookMarkSelectionPopup(messageService, bookMarkManager).open(chapter);
		});

		return menu;
	}

	private void removeElement(Hyperlink link) {
		int linkIndex = getLinkIndex(link);
		removeArrowLabel(linkIndex);
		removeFromHistory(linkIndex);
		removeLink(link);
		setupScroll();
		layoutElements();
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

	private void addListenersToLink(Hyperlink link, Chapter currentChapter, Menu menu) {
		addLinkListener(link, currentChapter);
		addMouseListener(link, menu);
	}

	private void addLinkListener(Hyperlink link, Chapter currentChapter) {
		link.addHyperlinkListener(new HyperlinkAdapter() {
			@Override
			public void linkActivated(HyperlinkEvent e) {
				CurrentChapter.setCurrentChapter(currentChapter);
			}
		});
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
		return Arrays.asList(subComposite.getChildren()).stream().filter(comtrol -> link.equals(comtrol))
				.mapToInt(control -> Arrays.asList(subComposite.getChildren()).indexOf(control)).findFirst().getAsInt();
	}

	private void setupScroll() {
		scrolled.setMinSize(subComposite.computeSize(scrolled.getClientArea().width, SWT.DEFAULT, true));
	}

	private void layoutElements() {
		parent.layout(true, true);
	}

}