package com.lory.biblereader.parts.leftstack.bookspart.chapternumberpopup;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
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

import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.dao.BibleDao;
import com.lory.biblereader.parts.leftstack.bookspart.chapternumberpopup.eventhandler.ChapterNumberKeyListener;
import com.lory.biblereader.parts.leftstack.bookspart.chapternumberpopup.eventhandler.ChapterNumberMouseListener;

@Creatable
@Singleton
public class ChapterNumberPopupShell {

	@Inject
	private ChapterNumberKeyListener chapterNumberKeyListener;
	@Inject
	private ChapterNumberMouseListener chapterNumberMouseListener;
	@Inject
	private TranslationManager translationManager;
	@Inject
	private BibleDao bibleDao;

	private Display display = Display.getDefault();
	private Shell shell;

	public void init(SelectionChangedEvent event, Book selectedBook) {
		close();
		createNewShell(event, selectedBook);
		initChapterNumberKeyListener(selectedBook);
	}

	public void setColor(Label label, int color) {
		label.setForeground(display.getSystemColor(color));
	}

	public void open() {
		shell.open();
	}

	public void close() {
		if (shell != null && !shell.isDisposed()) {
			shell.close();
		}
	}

	public void close(int delay) {
		display.timerExec(delay, (() -> {
			if (shell != null && !shell.isDisposed()) {
				shell.close();
			}
		}));
	}

	private void createNewShell(SelectionChangedEvent event, Book selectedBook) {
		shell = new Shell(display.getActiveShell(), SWT.APPLICATION_MODAL);
		shell.setLayout(new FillLayout());
		int height = calculateHeight(getNumberOfChapters(selectedBook));
		shell.setSize(100, height);
		shell.setLocation(calculateLocation(getTree(event), height));
	}

	private void initChapterNumberKeyListener(Book selectedBook) {
		chapterNumberKeyListener.setComposite(createMainComposite(selectedBook));
		shell.addKeyListener(chapterNumberKeyListener);
	}

	private Composite createMainComposite(Book selectedBook) {
		Composite comp = new Composite(shell, SWT.None);
		comp.setLayout(new RowLayout(SWT.HORIZONTAL));
		createLabels(selectedBook, getNumberOfChapters(selectedBook), comp);
		comp.layout();
		return comp;
	}

	private int getNumberOfChapters(final Book selectedBook) {
		return selectedBook.getBookSize(translationManager, bibleDao);
	}

	private int calculateHeight(int numOfLabels) {
		int rowHeight = 19;
		int firstRowCapacity = 10;
		if (numOfLabels <= firstRowCapacity) {
			return rowHeight;
		}
		if (numOfLabels <= 100) {
			return getRowsHeightInCaseOfLessThan100Labels(numOfLabels, rowHeight, firstRowCapacity);
		}
		return getRowsHeightInCaseOfMoreThan100Labels(numOfLabels, rowHeight);
	}

	private int getRowsHeightInCaseOfLessThan100Labels(int numOfLabels, int rowHeight, int firstRowCapacity) {
		int rowCapacityOfTwoDigitNums = 6;
		int numOfFullRows = (numOfLabels - firstRowCapacity) / rowCapacityOfTwoDigitNums + 1;
		boolean rowFragmentExist = (numOfLabels - firstRowCapacity) % rowCapacityOfTwoDigitNums != 0;
		int rowsHeight = (numOfFullRows + (rowFragmentExist ? 1 : 0)) * rowHeight;
		return rowsHeight;
	}

	private int getRowsHeightInCaseOfMoreThan100Labels(int numOfLabels, int rowHeight) {
		int rowCapacityOfThreeDigitNums = 4;
		int rowsOfHundredLabels = 15;
		int numOfFullRows = (numOfLabels - 100) / rowCapacityOfThreeDigitNums + rowsOfHundredLabels;
		boolean rowFragmentExist = (numOfLabels - 100) % rowCapacityOfThreeDigitNums != 0;
		int rowsHeight = (numOfFullRows + (rowFragmentExist ? 1 : 0)) * rowHeight;
		return rowsHeight;
	}

	private Point calculateLocation(Tree tree, int height) {
		Point shellLocation = display.getActiveShell().getLocation();
		Rectangle bounds = tree.getSelection()[0].getBounds();
		Point result = new Point(shellLocation.x + bounds.x + bounds.width + 15,
				shellLocation.y + bounds.y + bounds.height);
		int screenHeight = display.getClientArea().height;
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
			chapterNumberMouseListener.init(book, this);
			label.addMouseListener(chapterNumberMouseListener);
		}
	}

}
