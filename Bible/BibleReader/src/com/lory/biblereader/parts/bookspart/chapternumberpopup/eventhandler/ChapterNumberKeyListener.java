package com.lory.biblereader.parts.bookspart.chapternumberpopup.eventhandler;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;

/**
 * Event handler for KeyEvents on the ChapterNumberPopupShell.
 *
 * @author lorandKutvolgyi
 *
 */
@Creatable
public class ChapterNumberKeyListener extends KeyAdapter {
	public static final int POPUP_CLOSING_DELAY = 1000;
	private static final int CACHE_CLEARING_DELAY = 1000;
	private static final int MAXIMUM_CACHE_SIZE = 3;
	private final List<Character> cache = new ArrayList<>(3);
	private Composite composite;
	private Display display;

	@Override
	public void keyPressed(final KeyEvent event) {
		if (isEscCharacter(event)) {
			((Shell) event.getSource()).close();
		}
		if (!isNumberCharacter(event)) {
			return;
		}
		if (isStartingWithZero(event)) {
			return;
		}
		if (!isCacheFull()) {
			cache.add((char) event.keyCode);
		}
		if (!composite.isDisposed() && !cache.isEmpty() && isLabelWithCachedNumberExist()) {
			selectNumLabel(concatCachedChars(), event.stateMask);
		}
		clearCacheWithDelay();
	}

	private boolean isEscCharacter(final KeyEvent e) {
		return e.keyCode == SWT.ESC;
	}

	private boolean isNumberCharacter(final KeyEvent e) {
		return e.keyCode >= '0' && e.keyCode <= '9';
	}

	private boolean isStartingWithZero(final KeyEvent e) {
		return cache.isEmpty() && e.keyCode == '0';
	}

	private boolean isCacheFull() {
		return cache.size() == MAXIMUM_CACHE_SIZE;
	}

	private boolean isLabelWithCachedNumberExist() {
		return composite.getChildren().length >= Integer.valueOf(concatCachedChars());
	}

	private void clearCacheWithDelay() {
		getDisplay().timerExec(CACHE_CLEARING_DELAY, () -> cache.clear());
	}

	private Display getDisplay() {
		return display == null ? Display.getCurrent() : display;
	}

	private String concatCachedChars() {
		StringBuilder result = new StringBuilder("");
		for (Character cachedChar : cache) {
			result.append(cachedChar);
		}
		return result.toString();
	}

	private void selectNumLabel(String key, int stateMask) {
		Label label = (Label) composite.getChildren()[Integer.valueOf(key) - 1];
		Event event = new Event();
		event.data = POPUP_CLOSING_DELAY;
		event.stateMask = stateMask;
		label.notifyListeners(SWT.MouseDown, event);
	}

	void setDisplay(Display display) {
		this.display = display;
	}

	public void setComposite(Composite comp) {
		this.composite = comp;
	}
}
