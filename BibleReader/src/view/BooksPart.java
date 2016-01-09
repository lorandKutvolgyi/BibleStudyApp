package view;

import i18n.Messages;

import java.lang.reflect.Field;
import java.util.Set;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.inject.Singleton;

import model.Book;
import model.Testament;

import org.eclipse.e4.tools.services.Translation;
import org.eclipse.e4.ui.workbench.modeling.EPartService;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;

import view.eventhandler.BookSelectionListener;

/**
 * Shows the books of the Bible and shows the text of them in an other part.
 * 
 * @author lorandKutvolgyi
 * 
 */
public class BooksPart {

    @Inject
    @Translation
    private static Messages messages;

    @Inject
    private EPartService service;

    private Composite chapterNumbers;

    public Composite getChapterNumbers() {
        return chapterNumbers;
    }

    @Singleton
    public BooksPart() {

    }

    @PostConstruct
    public void postConstruct(final Composite parent) {
        parent.setLayout(new FillLayout(SWT.HORIZONTAL));
        TreeViewer books = new TreeViewer(parent, SWT.V_SCROLL);
        chapterNumbers = new Composite(parent, SWT.H_SCROLL);
        chapterNumbers.setLayout(new FillLayout(SWT.VERTICAL));
        books.setLabelProvider(new ViewerLabelProvider());
        books.setContentProvider(new ViewerTreeContentProvider());
        books.setInput(Testament.class);
        books.addSelectionChangedListener(new BookSelectionListener(service));
    }

    private static class ViewerLabelProvider extends LabelProvider {
        @Override
        public Image getImage(Object element) {
            return super.getImage(element);
        }

        @Override
        public String getText(Object element) {
            if (element instanceof Testament) {
                Field field;
                try {
                    field = Messages.class.getField(((Testament) element).getName());
                    return (String) field.get(messages);
                } catch (NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException e) {
                    e.printStackTrace();
                }

            }
            assert element instanceof Book;
            try {
                Field field = Messages.class.getField(((Book) element).getTitle());
                return (String) field.get(messages);
            } catch (NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException e) {
                e.printStackTrace();
            }
            return "";
        }
    }

    private static class ViewerTreeContentProvider implements ITreeContentProvider {

        @Override
        public void dispose() {
        }

        @Override
        public Object[] getChildren(Object parentElement) {
            if (parentElement instanceof Testament) {
                Set<? extends Book> books = ((Testament) parentElement).getBooks();
                return books.toArray();
            }
            return null;
        }

        @Override
        public Object[] getElements(Object inputElement) {
            return new Object[] { Testament.OLD_TESTAMENT, Testament.NEW_TESTAMENT };
        }

        @Override
        public Object getParent(Object element) {
            Object result = null;
            if (element instanceof Book) {
                result = ((Book) element).getTestament();
            }
            return result;
        }

        @Override
        public boolean hasChildren(Object element) {
            return element instanceof Testament;
        }

        @Override
        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        }

    }

}