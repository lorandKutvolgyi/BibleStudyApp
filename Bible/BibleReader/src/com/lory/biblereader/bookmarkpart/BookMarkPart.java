package com.lory.biblereader.bookmarkpart;

import java.util.Collection;
import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.bookmarkpart.eventhandler.BookMarkSelectionListener;
import com.lory.biblereader.bookmarkpart.eventhandler.BookMarkTreeContextMenuHandler;
import com.lory.biblereader.bookmarkpart.repository.BookMarkRepository;
import com.lory.biblereader.bookmarkpart.treeprovider.BookMarkLabelProvider;
import com.lory.biblereader.bookmarkpart.treeprovider.TreeContentProvider;
import com.lory.biblereader.bookspart.Bible;
import com.lory.biblereader.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.textpart.repository.TextRepository;

public class BookMarkPart implements Observer {

	@Inject
	private BookMarkManager bookMarkManager;
	@Inject
	private MessageService messageService;
	@Inject
	private BooksComparator booksComparator;
	@Inject
	private Bible bible;
	@Inject
	private TranslationManager translationManager;
	@Inject
	private BookMarkRepository bookMarkRepository;
	@Inject
	private TextRepository textRepository;
	@Inject
	private BookMarkTreeContextMenuHandler bookMarkTreeContextMenuHandler;

	private TreeViewer categories;

	@PostConstruct
	public void postConstruct(MPart part, Composite parent) {
		setLayout(parent);
		createTree(parent);
		createButton(parent);
		bookMarkManager.addObserver(this);
		update(null, null);
	}

	@Override
	public void update(Observable o, Object arg) {
		BookMarkCategoryFactory.clear();
		reloadCategoriesFromDb();
		setCategoriesToTree();
	}

	private void reloadCategoriesFromDb() {
		bookMarkRepository.getBookMarks().stream().forEach(bookMark -> {
			BookMarkCategory category = bookMark.getCategory();
			category.add(bookMark);
			BookMarkCategoryFactory.add(category);
		});
	}

	private void setCategoriesToTree() {
		Collection<BookMarkCategory> categories = BookMarkCategoryFactory.getCategories();
		this.categories.setInput(categories);
		if (categories != null && !categories.isEmpty()) {
			this.categories.expandAll();
		}
	}

	private void setLayout(final Composite parent) {
		parent.setLayout(new GridLayout(1, false));
	}

	private void createTree(Composite parent) {
		categories = new TreeViewer(parent, SWT.V_SCROLL);
		categories.getTree().setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true));
		categories.setLabelProvider(new BookMarkLabelProvider());
		categories.setContentProvider(new TreeContentProvider());
		categories.expandAll();
		bookMarkTreeContextMenuHandler.createContextMenu(categories);
	}

	private void createButton(Composite parent) {
		Button button = new Button(parent, SWT.NONE);
		button.setText(messageService.getMessage("newBookMark"));
		button.addSelectionListener(new BookMarkSelectionListener(messageService, bookMarkManager, booksComparator,
				bible, translationManager, textRepository));
	}

}