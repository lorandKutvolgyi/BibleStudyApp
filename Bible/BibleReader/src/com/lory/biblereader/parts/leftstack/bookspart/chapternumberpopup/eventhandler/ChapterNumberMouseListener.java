package com.lory.biblereader.parts.leftstack.bookspart.chapternumberpopup.eventhandler;

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
import com.lory.biblereader.parts.leftstack.bookspart.chapternumberpopup.ChapterNumberPopupShell;
import com.lory.biblereader.parts.middlestack.textpart.TextPartManager;
import com.lory.biblereader.parts.upperrightstack.historypart.History;

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
	@Inject
	private History history;
	@Inject
	private CurrentChapter currentChapter;

	private static MPart newTextPart;
	private Book book;
	private ChapterNumberPopupShell shell;
	private Display display;

	public void init(Book book, ChapterNumberPopupShell shell) {
		this.book = book;
		this.shell = shell;
	}

	@Override
	public void mouseDown(MouseEvent event) {
		if (isNewTabNeeded(event)) {
			showNewTextPart();
		} else if (isNewActiveTabNeeded()) {
			textPartManager.activatePart(textPartManager.getAnyVisiblePart());
		}

		textPartManager.modifyPartContent(book, getChapterId(getLabel(event)));
		history.addChapter(currentChapter.getChapter());

		shell.setColor(getLabel(event), SWT.COLOR_GRAY);
		shell.close(getDelay(event));

		resetNewTextPart(getDelay(event));
	}

	public void setDisplay(Display display) {
		this.display = display;
	}

	private boolean isNewTabNeeded(MouseEvent event) {
		return event.stateMask == SWT.CTRL
				|| (!textPartManager.isAnyActivePart() && !textPartManager.isAnyVisiblePart());
	}

	private synchronized void showNewTextPart() {
		if (newTextPart == null) {
			newTextPart = textPartManager.createNewTextPart(modelService, application);
			partService.showPart(newTextPart, PartState.ACTIVATE);
		}
	}

	private boolean isNewActiveTabNeeded() {
		return !textPartManager.isAnyActivePart() && textPartManager.isAnyVisiblePart();
	}

	private int getChapterId(Label label) {
		return Integer.parseInt(label.getText());
	}

	private Label getLabel(MouseEvent event) {
		return (Label) event.getSource();
	}

	private int getDelay(MouseEvent event) {
		return event.data == null ? 0 : (int) event.data;
	}

	private void resetNewTextPart(int delay) {
		synchronized (this) {
			getDisplay().timerExec(delay, (() -> {
				if (newTextPart != null) {
					newTextPart = null;
				}
			}));
		}
	}

	private Display getDisplay() {
		return display == null ? Display.getCurrent() : display;
	}
}
