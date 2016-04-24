package com.lory.eventhandler.booksorder;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerSorter;

import com.lory.model.Book;
import com.lory.model.Testament;

/**
 * Represents the books order in the tree of BooksPart. Intended to subclass it.
 *
 * @author lorandKutvolgyi
 *
 */
public abstract class AbstractBooksOrder extends ViewerSorter {
    protected List<Testament> testaments = new ArrayList<>();
    protected List<Book> books = new ArrayList<>();

    public AbstractBooksOrder() {
        testaments.add(Testament.OLD_TESTAMENT);
        testaments.add(Testament.NEW_TESTAMENT);
    }

    @Override
    public final int compare(Viewer viewer, Object first, Object second) {
        if (first instanceof Book) {
            assert second instanceof Book;
            return books.indexOf(first) - books.indexOf(second);
        }
        assert first instanceof Testament;
        assert second instanceof Testament;
        return testaments.indexOf(first) - testaments.indexOf(second);
    }
}
