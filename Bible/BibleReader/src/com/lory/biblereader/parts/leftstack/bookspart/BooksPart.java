package com.lory.biblereader.parts.leftstack.bookspart;

import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.e4.ui.di.PersistState;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.TreeSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.model.Testament;
import com.lory.biblereader.model.TreeElement;
import com.lory.biblereader.parts.leftstack.bookspart.eventhandler.BookClickListener;
import com.lory.biblereader.parts.leftstack.bookspart.eventhandler.BookSelectionListener;
import com.lory.biblereader.parts.leftstack.bookspart.eventhandler.BooksKeyListener;

/**
 * Shows the title of the books.
 *
 * @author lorandKutvolgyi
 *
 */
public class BooksPart implements Observer {

	@Inject
	private BookSelectionListener selectionListener;
	@Inject
	private BookClickListener bookClickListener;
	@Inject
	private BooksKeyListener booksKeyListener;
	@Inject
	private MessageService messageService;
	private TreeViewer books;

	@PostConstruct
	public void postConstruct(MPart part, final Composite parent) {
		setLayout(parent);
		createBooksTree(parent);
		restorePersistedState(part);
		CurrentChapter.setObserver(this);
	}

	private void setLayout(final Composite parent) {
		parent.setLayout(new FillLayout(SWT.HORIZONTAL));
	}

	private void createBooksTree(Composite parent) {
		books = new TreeViewer(parent, SWT.V_SCROLL);
		books.setLabelProvider(new ViewerLabelProvider());
		books.setContentProvider(new ViewerTreeContentProvider());
		books.setInput(Testament.class);
		addListeners();
	}

	private void addListeners() {
		booksKeyListener.setTreeViewer(books);
		books.getTree().addKeyListener(booksKeyListener);
		books.getTree().addMouseListener(bookClickListener);
		books.addSelectionChangedListener(selectionListener);
	}

	@PersistState
	private void persist(MPart part) {
		if (isSelectedChapter()) {
			String sel = books.getSelection().toString();
			part.getPersistedState().put("treeSelection", sel.substring(1, sel.length() - 1));
			part.getPersistedState().put("bookTitle", CurrentChapter.getCurrentChapter().getBook().getTitle());
			part.getPersistedState().put("chapterId", String.valueOf(CurrentChapter.getCurrentChapter().getId()));
		}
	}

	private void restorePersistedState(MPart part) {
		String title = part.getPersistedState().get("bookTitle");
		Book book = Testament.OLD_TESTAMENT.getBook(title);
		if (book == null) {
			book = Testament.NEW_TESTAMENT.getBook(title);
		}
		if (book != null) {
			selectionListener.allowSelectionChangeEvent(false);
			books.setSelection(
					new TreeSelection(new TreePath[] { new TreePath(new Object[] { book.getParent(), book }) }));
			Chapter persistedChapter = book.getChapter(Integer.valueOf(part.getPersistedState().get("chapterId")));
			CurrentChapter.setCurrentChapter(persistedChapter);
		}
	}

	private boolean isSelectedChapter() {
		return CurrentChapter.getCurrentChapter() != null;
	}

	@Override
	public String toString() {
		return "BooksPart\n\tselectionListener: " + selectionListener + "\n\tselection: "
				+ (books != null ? books.getSelection() : "");
	}

	private class ViewerLabelProvider extends LabelProvider {

		@Override
		public Image getImage(Object element) {
			return super.getImage(element);
		}

		@Override
		public String getText(Object element) {
			return messageService.getMessage(((TreeElement) element).getText());
		}
	}

	private class ViewerTreeContentProvider implements ITreeContentProvider {

		@Override
		public void dispose() {
		}

		@Override
		public Object[] getChildren(Object parentElement) {
			return ((TreeElement) parentElement).getChildren().toArray();
		}

		@Override
		public Object[] getElements(Object inputElement) {
			return new Object[] { Testament.OLD_TESTAMENT, Testament.NEW_TESTAMENT };
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

	public TreeViewer getBooks() {
		return books;
	}

	@Override
	public void update(Observable o, Object arg) {
		Book book = CurrentChapter.getCurrentChapter().getBook();
		Testament testament = book.getTestament();
		selectionListener.allowSelectionChangeEvent(false);
		books.setSelection(new TreeSelection(new TreePath(new Object[] { testament, book })));

	}

}