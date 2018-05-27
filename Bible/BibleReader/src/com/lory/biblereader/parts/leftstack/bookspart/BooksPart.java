package com.lory.biblereader.parts.leftstack.bookspart;

import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.e4.ui.di.PersistState;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.TreeSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.Bible;
import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.model.Testament;
import com.lory.biblereader.parts.leftstack.bookspart.eventhandler.BookClickListener;
import com.lory.biblereader.parts.leftstack.bookspart.eventhandler.BookSelectionListener;
import com.lory.biblereader.parts.leftstack.bookspart.eventhandler.BooksKeyListener;
import com.lory.biblereader.parts.leftstack.bookspart.treeprovider.ViewerLabelProvider;
import com.lory.biblereader.parts.leftstack.bookspart.treeprovider.ViewerTreeContentProvider;

public class BooksPart implements Observer {

	@Inject
	private BookSelectionListener selectionListener;
	@Inject
	private BookClickListener bookClickListener;
	@Inject
	private BooksKeyListener booksKeyListener;
	@Inject
	private MessageService messageService;
	@Inject
	private CurrentChapter currentChapter;

	private TreeViewer booksTreeViewer;

	@PostConstruct
	public void postConstruct(MPart part, final Composite parent) {
		setLayout(parent);
		initBooksTreeViewer(parent);
		restorePersistedState(part);
		currentChapter.setObserver(this);
	}

	private void setLayout(final Composite parent) {
		parent.setLayout(new FillLayout(SWT.HORIZONTAL));
	}

	private void initBooksTreeViewer(Composite parent) {
		createBooksTreeViewer(parent);
		addListenersToBooksTreeViewer();
	}

	private void createBooksTreeViewer(Composite parent) {
		booksTreeViewer = new TreeViewer(parent, SWT.V_SCROLL);
		booksTreeViewer.setLabelProvider(new ViewerLabelProvider(messageService));
		booksTreeViewer.setContentProvider(new ViewerTreeContentProvider());
		booksTreeViewer.setInput(Testament.class);
	}

	private void addListenersToBooksTreeViewer() {
		booksKeyListener.setTreeViewer(booksTreeViewer);
		booksTreeViewer.getTree().addKeyListener(booksKeyListener);
		booksTreeViewer.getTree().addMouseListener(bookClickListener);
		booksTreeViewer.addSelectionChangedListener(selectionListener);
	}

	@PersistState
	private void persist(MPart part) {
		if (isCurrentChapterSet()) {
			part.getPersistedState().put("bookTitle", currentChapter.getChapter().getBook().getTitle());
		}
	}

	private boolean isCurrentChapterSet() {
		return currentChapter.getChapter() != null;
	}

	private void restorePersistedState(MPart part) {
		Book book = Bible.getBookByTitle(restoreBookTitle(part));
		if (book != null) {
			selectionListener.allowSelectionChangeEvent(false);
			booksTreeViewer.setSelection(createTreeSelection(book));
		}
	}

	private String restoreBookTitle(MPart part) {
		return part.getPersistedState().get("bookTitle");
	}

	private TreeSelection createTreeSelection(Book book) {
		return new TreeSelection(new TreePath[] { new TreePath(new Object[] { book.getParent(), book }) });
	}

	public TreeViewer getBooks() {
		return booksTreeViewer;
	}

	@Override
	public void update(Observable o, Object arg) {
		Book book = currentChapter.getChapter().getBook();
		selectionListener.allowSelectionChangeEvent(false);
		booksTreeViewer.setSelection(new TreeSelection(new TreePath(new Object[] { book.getTestament(), book })));

	}

	@Override
	public String toString() {
		return "BooksPart\n\tselectionListener: " + selectionListener + "\n\tselection: "
				+ (booksTreeViewer != null ? booksTreeViewer.getSelection() : "");
	}

}