package com.lory.biblereader.parts.upperrightstack.bookmarkpart;

import java.time.LocalDateTime;
import java.util.Map.Entry;
import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.e4.ui.di.PersistState;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.TreeElement;

public class BookMarkPart implements Observer {
	@Inject
	private BookMarkManager bookMarkManager;
	@Inject
	private MessageService messageService;
	private TreeViewer categories;

	@PostConstruct
	public void postConstruct(MPart part, Composite parent) {
		bookMarkManager.addObserver(this);
		restorePersistedState(part);
		setLayout(parent);
		createTree(parent);
		createButton(parent);
		update(bookMarkManager, null);
	}

	private void restorePersistedState(MPart part) {
		bookMarkManager.restoreCategories(part.getPersistedState());
		bookMarkManager.restoreBookMarks(part.getPersistedState(), messageService);
	}

	@PersistState
	private void persist(MPart part) {
		part.getPersistedState().clear();
		for (Entry<BookMarkCategory, LocalDateTime> categoryAndDate : bookMarkManager.getCategories().entrySet()) {
			part.getPersistedState().put("Cat:" + categoryAndDate.getKey().getText(),
					categoryAndDate.getValue().toString());
			StringBuilder builder = new StringBuilder();
			for (BookMark bookMark : bookMarkManager.getBookMarksByCategory(categoryAndDate.getKey())) {
				builder.append(bookMark.getChapter().getBook().getTitle() + ":" + bookMark.getChapter().getId() + "("
						+ BookMarkUtil.getVerrsesAsString(bookMark) + ");");
			}
			part.getPersistedState().put(categoryAndDate.getKey().getText(), builder.toString());
		}
	}

	private void setLayout(final Composite parent) {
		parent.setLayout(new GridLayout(1, false));
	}

	private void createTree(Composite parent) {
		categories = new TreeViewer(parent, SWT.V_SCROLL);
		GridData layoutData = new GridData(SWT.FILL, SWT.FILL, true, true);
		categories.getTree().setLayoutData(layoutData);
		categories.setLabelProvider(new BookMarkLabelProvider());
		categories.setContentProvider(new TreeContentProvider());
		categories.expandAll();
	}

	private void createButton(Composite parent) {
		Button button = new Button(parent, SWT.NONE);
		button.setText(messageService.getMessage("newBookMark"));
		button.addSelectionListener(new SelectionListener() {

			@Override
			public void widgetSelected(SelectionEvent e) {
				BookMarkSelectionPopup bookMarkSelectionPopup = new BookMarkSelectionPopup(messageService,
						bookMarkManager);
				bookMarkSelectionPopup.open();
			}

			@Override
			public void widgetDefaultSelected(SelectionEvent e) {
			}

		});
	}

	@Override
	public void update(Observable o, Object arg) {
		categories.setInput(bookMarkManager.getCategories());
		categories.expandAll();
	}

	private class BookMarkLabelProvider extends LabelProvider {

		@Override
		public Image getImage(Object element) {
			return super.getImage(element);
		}

		@Override
		public String getText(Object element) {
			return ((TreeElement) element).getText();
		}
	}

	private class TreeContentProvider implements ITreeContentProvider {

		@Override
		public void dispose() {
		}

		@Override
		public Object[] getChildren(Object parentElement) {
			return ((TreeElement) parentElement).getChildren().toArray();
		}

		@Override
		public Object[] getElements(Object inputElement) {
			return bookMarkManager.getCategories().keySet().toArray();
		}

		@Override
		public Object getParent(Object element) {
			return ((TreeElement) element).getParent();
		}

		@Override
		public boolean hasChildren(Object element) {
			return !((TreeElement) element).getChildren().isEmpty();
		}

		@Override
		public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
		}

	}
}