package com.lory.biblereader.perspective.parts.bookspart;

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

import com.lory.biblereader.perspective.i18n.MessageService;
import com.lory.biblereader.perspective.model.Book;
import com.lory.biblereader.perspective.model.Chapter;
import com.lory.biblereader.perspective.model.CurrentChapter;
import com.lory.biblereader.perspective.model.Testament;
import com.lory.biblereader.perspective.model.TreeElement;
import com.lory.biblereader.perspective.parts.bookspart.eventhandler.BookSelectionListener;
import com.lory.biblereader.perspective.parts.bookspart.eventhandler.EnterKeyListener;
import com.lory.biblereader.perspective.parts.bookspart.eventhandler.NavigationKeyListener;
import com.lory.biblereader.perspective.parts.bookspart.eventhandler.PagingListener;
import com.lory.biblereader.perspective.parts.bookspart.eventhandler.SortingListener;

/**
 * Shows the title of the books.
 *
 * @author lorandKutvolgyi
 *
 */
public class BooksPart {

    @Inject
    private BookSelectionListener selectionListener;
    @Inject
    private PagingListener pagingListener;
    @Inject
    private MessageService messageService;
    private TreeViewer books;

    @PostConstruct
    public void postConstruct(MPart part, final Composite parent) {
        setPartTitle(part);
        setLayout(parent);
        createBooksTree(parent);
        restorePersistedState(part);
    }

    private void setPartTitle(MPart part) {
        part.setLabel(messageService.getMessage("Books"));
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
        books.addSelectionChangedListener(selectionListener);
        books.getTree().addKeyListener(new EnterKeyListener(books));
        books.getTree().addKeyListener(pagingListener);
        books.getTree().addKeyListener(new NavigationKeyListener(selectionListener));
        books.getTree().addKeyListener(new SortingListener(books));
    }

    @PersistState
    private void persist(MPart part) {
        if (isSelectedChapter()) {
            String sel = books.getSelection().toString();
            part.getPersistedState().put("treeSelection", sel.substring(1, sel.length() - 1));
            part.getPersistedState().put("bookTitle", CurrentChapter.getInstance().getBook().getTitle());
            part.getPersistedState().put("chapterId", String.valueOf(CurrentChapter.getInstance().getId()));
        }
    }

    private void restorePersistedState(MPart part) {
        String title = part.getPersistedState().get("bookTitle");
        Book book = Testament.OLD_TESTAMENT.getBook(title);
        if (book == null) {
            book = Testament.NEW_TESTAMENT.getBook(title);
        }
        if (book != null) {
            selectionListener.preventSelectionChangeEvent();
            books.setSelection(
                    new TreeSelection(new TreePath[] { new TreePath(new Object[] { book.getParent(), book }) }));
            Chapter persistedChapter = book.getChapter(Integer.valueOf(part.getPersistedState().get("chapterId")));
            CurrentChapter.setCurrentChapter(persistedChapter);
        }
    }

    private boolean isSelectedChapter() {
        return CurrentChapter.getInstance() != null;
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
        public void dispose() {}

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
        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {}

    }

}