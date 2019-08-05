package com.lory.biblereader.bookspart;

import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.TreeSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.base.translation.model.Book;
import com.lory.biblereader.base.translation.model.CurrentChapter;
import com.lory.biblereader.base.translation.model.Testament;
import com.lory.biblereader.bookspart.eventhandler.BookClickListener;
import com.lory.biblereader.bookspart.eventhandler.BookSelectionListener;
import com.lory.biblereader.bookspart.eventhandler.BooksKeyListener;
import com.lory.biblereader.bookspart.treeprovider.ViewerLabelProvider;
import com.lory.biblereader.bookspart.treeprovider.ViewerTreeContentProvider;

public class BooksPart implements Observer {

	private BookSelectionListener selectionListener;
	private BookClickListener bookClickListener;
	private BooksKeyListener booksKeyListener;
	private MessageService messageService;
	private CurrentChapter currentChapter;

	private TreeViewer booksTreeViewer;

	@Inject
	public BooksPart(BooksPartServices services) {
		selectionListener = services.getSelectionListener();
		bookClickListener = services.getBookClickListener();
		booksKeyListener = services.getBooksKeyListener();
		messageService = services.getMessageService();
		currentChapter = services.getCurrentChapter();
	}

	@PostConstruct
	public void postConstruct(MPart part, final Composite parent) {
		setLayout(parent);
		initBooksTreeViewer(parent);
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