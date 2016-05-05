package com.lory.biblereader.parts.bookspart.chapternumberpopup;

import java.util.List;

import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.RowLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Tree;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.parts.bookspart.chapternumberpopup.eventhandler.ChapterNumberLabelListener;
import com.lory.biblereader.parts.bookspart.chapternumberpopup.eventhandler.ChapterNumberPopupListener;

/**
 * Shows the chapter numbers of the selected book.
 *
 * @author lorandKutvolgyi
 *
 */
public class ChapterNumberPopupShell {
    private Shell shell;

    public ChapterNumberPopupShell(SelectionChangedEvent event, Book selectedBook) {
        Display display = Display.getDefault();
        shell = new Shell(display, SWT.ON_TOP | SWT.FOCUSED);
        Composite comp = createMainComposite();
        initPopup(event, selectedBook, display, comp);
        shell.addKeyListener(new ChapterNumberPopupListener(comp, this));
    }

    private Composite createMainComposite() {
        Composite comp = new Composite(shell, SWT.None);
        comp.setLayout(new RowLayout(SWT.HORIZONTAL));
        return comp;
    }

    private void initPopup(SelectionChangedEvent event, final Book selectedBook, final Display display,
            Composite comp) {
        shell.setLayout(new FillLayout());
        int numOfChapters = getNumberOfChapters(selectedBook);
        int height = calculateHeight(numOfChapters);
        shell.setSize(100, height);
        shell.setLocation(calculateLocation(display, getTree(event), height));
        createLabels(selectedBook, numOfChapters, comp);
        comp.layout();
    }

    private int getNumberOfChapters(final Book selectedBook) {
        List<Chapter> chapters = selectedBook.getChapters();
        return chapters.size();
    }

    private int calculateHeight(int numOfLabels) {
        int rowHeight = 19;
        int firstRowCapacity = 10;
        if (numOfLabels <= firstRowCapacity) {
            return rowHeight;
        }
        if (numOfLabels <= 100) {
            int rowCapacityOfTwoDigitNums = 6;
            int numOfFullRows = (numOfLabels - firstRowCapacity) / rowCapacityOfTwoDigitNums + 1;
            boolean rowFragmentExist = (numOfLabels - firstRowCapacity) % rowCapacityOfTwoDigitNums != 0;
            int rowsHeight = (numOfFullRows + (rowFragmentExist ? 1 : 0)) * rowHeight;
            return rowsHeight;
        }
        int rowCapacityOfThreeDigitNums = 4;
        int rowsOfHundredLabels = 15;
        int numOfFullRows = (numOfLabels - 100) / rowCapacityOfThreeDigitNums + rowsOfHundredLabels;
        boolean rowFragmentExist = (numOfLabels - 100) % rowCapacityOfThreeDigitNums != 0;
        int rowsHeight = (numOfFullRows + (rowFragmentExist ? 1 : 0)) * rowHeight;
        return rowsHeight;
    }

    private Point calculateLocation(final Display display, Tree tree, int height) {
        Point shellLocation = display.getActiveShell().getLocation();
        Rectangle bounds = tree.getSelection()[0].getBounds();
        Point result = new Point(shellLocation.x + bounds.x + bounds.width + 15,
                shellLocation.y + bounds.y + bounds.height);
        int screenHeight = Display.getDefault().getClientArea().height;
        if (result.y + height > screenHeight) {
            int diff = result.y + height - screenHeight;
            result.y -= diff;
        }
        return result;
    }

    private Tree getTree(SelectionChangedEvent event) {
        return ((TreeViewer) event.getSource()).getTree();
    }

    private void createLabels(final Book book, int numOfChapters, Composite comp) {
        for (int i = 1; i <= numOfChapters; i++) {
            Label label = new Label(comp, SWT.HORIZONTAL);
            label.setText(Integer.toString(i));
            label.addMouseListener(new ChapterNumberLabelListener(book, label, i, this));
        }
    }

    /**
     * Opens the shell.
     *
     * @see @link org.eclipse.swt.widgets.Shell#open()
     */
    public void open() {
        shell.open();
    }

    /**
     * Closes the shell.
     *
     * @see org.eclipse.swt.widgets.Shell#close()
     */
    public void close() {
        if (shell != null && !shell.isDisposed()) {
            shell.close();
        }
    }

    /**
     * Returns true if the widget has been disposed or has not been created, and
     * false otherwise.
     *
     * @see org.eclipse.swt.widgets.Shell#isDisposed()
     *
     * @return true if the widget has been disposed or has not been created, and
     *         false otherwise
     */
    public boolean isDisposed() {
        return shell == null || shell.isDisposed();
    }
}
