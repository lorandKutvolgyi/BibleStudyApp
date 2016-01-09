package view.eventhandler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Book;
import model.Chapter;

import org.eclipse.e4.ui.workbench.modeling.EPartService;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TreeSelection;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;

import view.BibleTextPart;
import view.BooksPart;

public class BookSelectionListener implements ISelectionChangedListener {
    private static Map<Book, List<Chapter>> books = new HashMap<>();
    private final EPartService service;

    public BookSelectionListener(EPartService service) {
        this.service = service;
    }

    @Override
    public void selectionChanged(SelectionChangedEvent event) {
        Object firstElement = ((TreeSelection) event.getSelection()).getFirstElement();
        BooksPart booksPart = (BooksPart) service.findPart("biblereader.BooksPart").getObject();
        Control[] children = booksPart.getChapterNumbers().getChildren();
        for (Control control : children) {
            control.dispose();
        }
        if (firstElement instanceof Book) {
            final Book book = (Book) firstElement;
            List<Chapter> chapters = book.getChapters();
            for (int i = 1; i <= chapters.size(); i++) {
                Label label = new Label(booksPart.getChapterNumbers(), SWT.None);
                label.setText(Integer.toString(i));
                addListener(book, label, i);
            }
            if (!books.containsKey(book)) {
                books.put(book, chapters);
            }

        }
        booksPart.getChapterNumbers().layout();
    }

    private void addListener(final Book book, Label label, final int i) {
        label.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseDown(MouseEvent e) {
                BibleTextPart textPart = (BibleTextPart) service.findPart("biblereader.BibleTextPart").getObject();
                textPart.setText(book.getChapter(i).getText());
            }
        });
    }

}
