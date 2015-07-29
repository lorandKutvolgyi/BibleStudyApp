package view;

import java.util.Set;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import model.Books;
import model.Testament;

import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;

public class BooksView {
    private static class ViewerLabelProvider extends LabelProvider {
        @Override
        public Image getImage(Object element) {
            return super.getImage(element);
        }

        @Override
        public String getText(Object element) {
            if (element instanceof Testament) {
                return ((Testament) element).getName();
            }
            assert element instanceof Books;
            return ((Books) element).getTitle();
        }
    }

    private static class ViewerTreeContentProvider implements ITreeContentProvider {

        @Override
        public void dispose() {
        }

        @Override
        public Object[] getChildren(Object parentElement) {
            if (parentElement instanceof Testament) {
                Set<? extends Books> books = ((Testament) parentElement).getBooks();
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
            if (element instanceof Books) {
                result = ((Books) element).getTestament();
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

    @Inject
    public BooksView() {
        // TODO Your code here
    }

    @PostConstruct
    public void postConstruct(Composite parent) {
        parent.setLayout(new FillLayout());
        TreeViewer oldTestamentBooks = new TreeViewer(parent);
        oldTestamentBooks.setAutoExpandLevel(1);
        oldTestamentBooks.setLabelProvider(new ViewerLabelProvider());
        oldTestamentBooks.setContentProvider(new ViewerTreeContentProvider());
        oldTestamentBooks.setInput(Testament.class);
    }
}