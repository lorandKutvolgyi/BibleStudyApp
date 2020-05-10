package com.lory.biblereader.historypart.external;

import java.util.Arrays;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.atomic.AtomicInteger;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.RowLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.forms.widgets.Hyperlink;

import com.lory.biblereader.historypart.interfaceadapter.listener.ListenerFactory;
import com.lory.biblereader.historypart.interfaceadapter.presenter.ChangeType;
import com.lory.biblereader.historypart.interfaceadapter.presenter.HistoryPresenter;
import com.lory.biblereader.historypart.interfaceadapter.presenter.HistoryViewModel;
import com.lory.biblereader.textpart.Chapter;

public class HistoryView implements Observer {

	private HistoryPresenter presenter;
	private HistoryViewModel model;
	private UiFrameworkFacade uiFrameworkFacade;
	private ListenerFactory listenerFactory;
	private Composite parent;
	private ScrolledComposite mainComposite;
	private Composite subComposite;

	@Inject
	public HistoryView(HistoryPresenter presenter, HistoryViewModel model, UiFrameworkFacade uiFrameworkFacade,
			ListenerFactory listenerFactory) {
		this.presenter = presenter;
		this.model = model;
		this.uiFrameworkFacade = uiFrameworkFacade;
		this.listenerFactory = listenerFactory;
	}

	@PostConstruct
	public void postConstruct(Composite parent) {
		setupParent(parent);
		setupMainComposite(parent);
		setupSubComposite();
		setupHistoryEntryElements();
		observeTheModel();
	}

	private void setupParent(Composite parent) {
		this.parent = parent;
		this.parent.setLayout(new FillLayout());
	}

	private void setupMainComposite(Composite parent) {
		mainComposite = new ScrolledComposite(parent, SWT.V_SCROLL);
		mainComposite.setAlwaysShowScrollBars(false);
		mainComposite.setExpandVertical(true);
		mainComposite.setExpandHorizontal(true);
		mainComposite.setLayout(new FillLayout());
		mainComposite.addControlListener(listenerFactory.getResizeListener());
	}

	private void setupSubComposite() {
		subComposite = new Composite(mainComposite, SWT.NONE);
		subComposite.setLayout(new RowLayout());
		mainComposite.setContent(subComposite);
	}

	private void observeTheModel() {
		model.addObserver(this);
	}

	@Override
	public void update(Observable o, Object arg) {
		switch ((ChangeType) arg) {
		case HISTORY_CHANGED:
			disposeAllLinks();
			setupHistoryEntryElements();
			setupScroll();
			break;
		case SCROLL_SETUP_NEEDED:
			setupScroll();
			break;
		case SHOWING_NEW_TAB_NEEDED:
			uiFrameworkFacade.showNewView();
			break;
		default:
			throw new IllegalArgumentException();
		}
	}

	private void disposeAllLinks() {
		Control[] controls = subComposite.getChildren();
		if (controls.length != 0) {
			Arrays.asList(controls).stream().forEach(control -> control.dispose());
			mainComposite.setMinSize(null);
		}
	}

	private void setupHistoryEntryElements() {
		if (!mainComposite.isDisposed()) {
			AtomicInteger index = new AtomicInteger();
			presenter.getHistory().stream().forEach(chapter -> {
				createArrowLabel();
				createLinkWithMenu(index, chapter);
				setupScroll();

				parent.layout(true, true);
			});
		}
	}

	private void createArrowLabel() {
		if (subComposite.getChildren().length != 0) {
			Label label = new Label(subComposite, SWT.NONE);
			label.setText(" -> ");
		}
	}

	private void createLinkWithMenu(AtomicInteger index, Chapter chapter) {
		Hyperlink link = createLink(chapter);
		Menu menu = createContextMenu(index, chapter, link);
		link.setMenu(menu);
		link.setData("chapter", chapter);
		link.setData("menu", menu);
		link.addHyperlinkListener(listenerFactory.getLinkListener());
	}

	private Hyperlink createLink(Chapter chapter) {
		Hyperlink link = new Hyperlink(subComposite, SWT.NONE);
		link.setBackground(subComposite.getBackground());
		link.setText(model.getLinkText(chapter));
		return link;
	}

	private Menu createContextMenu(AtomicInteger index, Chapter chapter, Hyperlink link) {
		Menu menu = new Menu(link);

		MenuItem remove = new MenuItem(menu, SWT.PUSH);
		remove.setData(index.getAndIncrement());
		remove.setText(model.getRemoveMenuText());
		remove.addListener(SWT.Selection, listenerFactory.getRemoveMenuListener());

		MenuItem addToBookMark = new MenuItem(menu, SWT.PUSH);
		addToBookMark.setText(model.getAddToBookmarkMenuText());
		addToBookMark.setData(chapter);
		addToBookMark.addListener(SWT.Selection, listenerFactory.getAddToBookMarkMenuListener());
		return menu;
	}

	private void setupScroll() {
		mainComposite.setMinSize(subComposite.computeSize(mainComposite.getClientArea().width, SWT.DEFAULT, true));
	}
}
