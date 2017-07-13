package com.lory.biblereader.parts.bookspart.chapternumberpopup.eventhandler;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.ui.model.application.MApplication;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.e4.ui.workbench.modeling.EModelService;
import org.eclipse.e4.ui.workbench.modeling.EPartService;
import org.eclipse.e4.ui.workbench.modeling.EPartService.PartState;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.parts.bookspart.chapternumberpopup.ChapterNumberPopupShell;
import com.lory.biblereader.parts.textpart.TextPartManager;

/**
 * Event handler for chapter number selection.
 *
 * @author lorandKutvolgyi
 *
 */
@Creatable
@Singleton
public class ChapterNumberMouseListener extends MouseAdapter {
	@Inject
	private static EPartService partService;
	@Inject
	private static EModelService modelService;
	@Inject
	private static MApplication application;
	@Inject
	private TextPartManager textPartManager;
	private static MPart newTextPart;
	private Book book;
	private int chapterId;
	private ChapterNumberPopupShell shell;
	private Display display;
	private boolean newActivePart;

	public void init(Book book, ChapterNumberPopupShell shell) {
		this.book = book;
		this.shell = shell;
	}

	@Override
	public void mouseDown(MouseEvent event) {
		Label label = (Label) event.getSource();
		chapterId = Integer.parseInt(label.getText());
		if (event.stateMask == SWT.CTRL || !textPartManager.isAnyActivePart()) {
			synchronized (ChapterNumberMouseListener.class) {
				if (newTextPart == null) {
					newTextPart = textPartManager.newTextPart(modelService, application);
				}
			}
			newActivePart = true;
		} else {
			CurrentChapter.setCurrentChapter(book.getChapter(chapterId));
			textPartManager.getChapters().put(textPartManager.getActivePart(), book.getChapter(chapterId));
		}
		shell.setColor(label, SWT.COLOR_GRAY);
		int delay = event.data == null ? 0 : (int) event.data;
		shell.close(delay);
		if (newActivePart) {
			showNewPart(delay);
			newActivePart = false;
		}
	}

	private Display getDisplay() {
		return display == null ? Display.getCurrent() : display;
	}

	public void setDisplay(Display display) {
		this.display = display;
	}

	private void showNewPart(int delay) {
		getDisplay().timerExec(delay, (() -> {
			synchronized (ChapterNumberMouseListener.class) {
				if (newTextPart != null) {
					partService.showPart(newTextPart, PartState.ACTIVATE);
					newTextPart = null;
				}
				CurrentChapter.setCurrentChapter(book.getChapter(chapterId));
				textPartManager.getChapters().put(textPartManager.getActivePart(), book.getChapter(chapterId));
			}
		}));
	}

}
