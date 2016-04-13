package com.lory.view;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.e4.core.services.nls.Translation;
import org.eclipse.e4.ui.di.PersistState;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.e4.ui.workbench.modeling.EPartService;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.TreeSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;

import com.lory.eventhandler.BookSelectionListener;
import com.lory.i18n.MessageService;
import com.lory.i18n.Messages;
import com.lory.model.Book;
import com.lory.model.Chapter;
import com.lory.model.CurrentChapter;
import com.lory.model.Testament;
import com.lory.model.TreeElement;

/**
 * Shows the title of the books.
 *
 * @author lorandKutvolgyi
 *
 */
public class BooksPart {

    @Inject
    private EPartService service;
    @Inject
    @Translation
    private Messages messages;

    private BookSelectionListener selectionListener;
    private TreeViewer books;

    @PostConstruct
    public void postConstruct(MPart part, final Composite parent) {
        setPartTitle(part);
        setLayout(parent);
        createBooksTree(parent);
        restorePersistedState(part);
    }

    private void setPartTitle(MPart part) {
        part.setLabel(MessageService.getMessage(messages, "Books"));
    }

    private void setLayout(final Composite parent) {
        parent.setLayout(new FillLayout(SWT.HORIZONTAL));
    }

    private void createBooksTree(final Composite parent) {
        books = new TreeViewer(parent, SWT.V_SCROLL);
        books.setLabelProvider(new ViewerLabelProvider());
        books.setContentProvider(new ViewerTreeContentProvider());
        books.setInput(Testament.class);
        selectionListener = new BookSelectionListener();
        books.addSelectionChangedListener(selectionListener);
        addEnterListener(books);
        addArrowButtonListener(books);
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

    private void addEnterListener(final TreeViewer books) {
        books.getTree().addKeyListener(new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent e) {
                if (e.keyCode == SWT.CR && !books.getSelection().isEmpty()) {
                    books.getTree().notifyListeners(SWT.Selection, null);
                }
            }
        });
    }

    private void addArrowButtonListener(final TreeViewer books) {
        books.getTree().addKeyListener(new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent e) {
                if (e.keyCode == SWT.ARROW_UP || e.keyCode == SWT.ARROW_DOWN || e.keyCode == SWT.ARROW_RIGHT
                        || e.keyCode >= 'a' && e.keyCode <= 'z') {
                    selectionListener.preventSelectionChangeEvent();
                }
                if (!isSelectedChapter()) {
                    return;
                }
                if (!(e.stateMask == SWT.ALT && (e.keyCode == SWT.ARROW_RIGHT || e.keyCode == SWT.ARROW_LEFT))) {
                    return;
                }

                int id = CurrentChapter.getInstance().getId();
                int newId = 0;
                if (e.keyCode == SWT.ARROW_RIGHT) {
                    newId = id + 1;
                } else if (e.keyCode == SWT.ARROW_LEFT) {
                    newId = id - 1;
                }
                e.doit = false;
                MPart part = service.findPart("biblereader.BibleTextPart");
                BibleTextPart textPart = (BibleTextPart) part.getObject();
                Book book = CurrentChapter.getInstance().getBook();
                if (newId != 0 && newId <= isMax(CurrentChapter.getInstance())) {
                    textPart.setContent(book.getChapter(newId).getText());
                    part.setLabel(MessageService.getMessage(messages, book.getTitle()) + " " + (newId));
                    CurrentChapter.setCurrentChapter(book.getChapter(newId));
                }
            }
        });
    }

    private int isMax(Chapter currentChapter) {
        Book book = currentChapter.getBook();
        int max = book.getChapters().size();
        return max;
    }

    private boolean isSelectedChapter() {
        return CurrentChapter.getInstance() != null;
    }

    private class ViewerLabelProvider extends LabelProvider {

        @Override
        public Image getImage(Object element) {
            return super.getImage(element);
        }

        @Override
        public String getText(Object element) {
            return MessageService.getMessage(messages, ((TreeElement) element).getContent());
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