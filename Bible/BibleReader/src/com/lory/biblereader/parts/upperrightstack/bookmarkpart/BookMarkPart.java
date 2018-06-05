package com.lory.biblereader.parts.upperrightstack.bookmarkpart;

import java.time.LocalDateTime;
import java.util.Map.Entry;
import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.e4.ui.di.PersistState;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.parts.leftstack.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.listener.BookMarkSelectionListener;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.treeprovider.BookMarkLabelProvider;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.treeprovider.TreeContentProvider;

public class BookMarkPart implements Observer {

	@Inject
	private BookMarkManager bookMarkManager;
	@Inject
	private MessageService messageService;
	@Inject
	private BooksComparator booksComparator;

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

	@Override
	public void update(Observable o, Object arg) {
		categories.setInput(bookMarkManager.getCategories());
		categories.expandAll();
	}

	@PersistState
	private void persist(MPart part) {
		part.getPersistedState().clear();
		for (Entry<BookMarkCategory, LocalDateTime> categoryAndDate : bookMarkManager.getCategories().entrySet()) {
			String category = categoryAndDate.getKey().getText();
			String date = categoryAndDate.getValue().toString();
			part.getPersistedState().put("Cat:" + category, date);
			part.getPersistedState().put(category, getBookMarks(categoryAndDate));
		}
	}

	private void restorePersistedState(MPart part) {
		bookMarkManager.restoreCategoriesWithDate(part.getPersistedState());
		bookMarkManager.restoreCategoriesWithBookMarks(part.getPersistedState(), messageService);
	}

	private void setLayout(final Composite parent) {
		parent.setLayout(new GridLayout(1, false));
	}

	private void createTree(Composite parent) {
		categories = new TreeViewer(parent, SWT.V_SCROLL);
		categories.getTree().setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true));
		categories.setLabelProvider(new BookMarkLabelProvider());
		categories.setContentProvider(new TreeContentProvider(bookMarkManager));
		categories.expandAll();
	}

	private void createButton(Composite parent) {
		Button button = new Button(parent, SWT.NONE);
		button.setText(messageService.getMessage("newBookMark"));
		button.addSelectionListener(new BookMarkSelectionListener(messageService, bookMarkManager, booksComparator));
	}

	private String getBookMarks(Entry<BookMarkCategory, LocalDateTime> categoryAndDate) {
		StringBuilder builder = new StringBuilder();
		for (BookMark bookMark : bookMarkManager.getBookMarksByCategory(categoryAndDate.getKey())) {
			String title = bookMark.getChapter().getBook().getTitle();
			int chapter = bookMark.getChapter().getId();
			String versesAsString = BookMarkUtil.getVersesAsString(bookMark);
			builder.append(title + ":" + chapter + "(" + versesAsString + ");");
		}
		return builder.toString();
	}
}