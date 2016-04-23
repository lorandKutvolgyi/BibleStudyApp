package com.lory.view;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.RowLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Tree;

import com.lory.model.Book;
import com.lory.model.Chapter;
import com.lory.model.CurrentChapter;

public class ChapterNumberPopupShell {
    private static final int MAXIMUM_CACHE_SIZE = 3;
    private final List<Character> cache = new ArrayList<>(3);
    private final Shell shell;

    public ChapterNumberPopupShell(SelectionChangedEvent event, Book selectedBook) {
        Display display = Display.getDefault();
        shell = new Shell(display, SWT.ON_TOP | SWT.FOCUSED);
        Composite comp = createMainComposite();
        initPopup(event, selectedBook, display, comp);
        addListeners(comp);
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
        int numOfChapters = chapters.size();
        return numOfChapters;
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
            addListenerToLabels(book, label, i);
        }
    }

    private void addListeners(Composite comp) {
        addEscListener(comp);
        addNumbersListener(comp);
    }

    private void addEscListener(final Composite comp) {
        comp.addKeyListener(new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent e) {
                if (e.keyCode == SWT.ESC) {
                    close();
                }
            }
        });
    }

    private void addNumbersListener(final Composite comp) {
        comp.addKeyListener(new KeyAdapter() {
            @Override
            public void keyPressed(final KeyEvent e) {
                if (!(e.keyCode >= '0' && e.keyCode <= '9')) {
                    return;
                }
                if (cache.isEmpty() && e.keyCode == '0') {
                    return;
                }
                if (cache.size() < MAXIMUM_CACHE_SIZE) {
                    cache.add((char) e.keyCode);
                }
                if (!comp.isDisposed() && !cache.isEmpty()
                        && comp.getChildren().length >= Integer.valueOf(getCachedChars())) {
                    selectNumLabel(getCachedChars(), comp);
                }
                Display.getCurrent().timerExec(1000, new Runnable() {
                    @Override
                    public void run() {
                        cache.clear();
                    }
                });
            }
        });
    }

    private String getCachedChars() {
        StringBuilder result = new StringBuilder("");
        for (Character cachedChar : cache) {
            result.append(cachedChar);
        }
        return result.toString();
    }

    private void selectNumLabel(String key, Composite comp) {
        Label label = (Label) comp.getChildren()[Integer.valueOf(key) - 1];
        Event event = new Event();
        event.data = 1000;
        label.notifyListeners(SWT.MouseDown, event);
    }

    private void addListenerToLabels(final Book book, final Label label, final int i) {
        label.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseDown(MouseEvent event) {
                CurrentChapter.setCurrentChapter(book.getChapter(i));
                label.setForeground(Display.getCurrent().getSystemColor(SWT.COLOR_GRAY));
                if (event.data == null) {
                    close();
                } else {
                    closeChapterNumberPopupShellDelayed((int) event.data);
                }
            }
        });
    }

    private void closeChapterNumberPopupShellDelayed(int delay) {
        Display.getCurrent().timerExec(delay, new Runnable() {
            @Override
            public void run() {
                close();
            }
        });
    }

    public void open() {
        shell.open();
    }

    public void close() {
        if (shell != null && !shell.isDisposed()) {
            shell.close();
        }
    }

    public boolean isDisposed() {
        return shell.isDisposed();
    }
}
