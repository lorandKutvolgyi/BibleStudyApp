package com.lory.biblereader.parts.bookspart.chapternumberpopup.eventhandler;

import org.eclipse.e4.ui.model.application.ui.basic.MPart;
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
public class ChapterNumberMouseListener extends MouseAdapter {
	private final Book book;
	private final Label label;
	private final int chapterId;
	private final ChapterNumberPopupShell shell;
	private Display display;
	private EPartService partService;
	private TextPartManager textPartManager;

	public ChapterNumberMouseListener(Book book, Label label, int chapterId, ChapterNumberPopupShell shell,
			EPartService partService, TextPartManager textPartManager) {
		this.book = book;
		this.label = label;
		this.chapterId = chapterId;
		this.shell = shell;
		this.partService = partService;
		this.textPartManager = textPartManager;
	}

	@Override
	public void mouseDown(MouseEvent event) {
		if (event.stateMask == SWT.CTRL) {
			MPart newPart = partService.showPart(textPartManager.getNextHiddenPart(), PartState.VISIBLE);
			textPartManager.setActivePart(newPart);
		}
		CurrentChapter.setCurrentChapter(book.getChapter(chapterId));
		label.setForeground(getDisplay().getSystemColor(SWT.COLOR_GRAY));
		int delay = event.data == null ? 0 : (int) event.data;
		closeShell(delay);
	}

	private Display getDisplay() {
		return display == null ? Display.getCurrent() : display;
	}

	void setDisplay(Display display) {
		this.display = display;
	}

	private void closeShell(int delay) {
		getDisplay().timerExec(delay, (() -> shell.close()));
	}
}
