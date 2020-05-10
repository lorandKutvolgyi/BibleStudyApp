package com.lory.biblereader.bookspart.chapternumberpopup;

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

import com.lory.biblereader.bookspart.Book;
import com.lory.biblereader.bookspart.chapternumberpopup.eventhandler.ChapterNumberKeyListener;
import com.lory.biblereader.bookspart.chapternumberpopup.eventhandler.ChapterNumberMouseListener;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.textpart.repository.TextRepository;

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
	private TextRepository textRepository;

	private Display display = Display.getDefault();
	private Shell shell;
	private Tree tree;

	public void init(SelectionChangedEvent event, Book selectedBook) {
		close();
		createNewShell(event, selectedBook);
		initChapterNumberKeyListener(selectedBook);
	}

	public void setColor(Label label, int color) {
		label.setForeground(display.getSystemColor(color));
	}

	public void open() {
		shell.setSize(shell.computeSize(100, SWT.DEFAULT, true));
		shell.setLocation(calculateLocation(tree, shell.getSize().y));
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
		tree = getTree(event);
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
		return selectedBook.getBookSize(translationManager, textRepository);
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
