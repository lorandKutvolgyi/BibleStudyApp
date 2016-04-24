package com.lory.eventhandler;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;

import com.lory.view.ChapterNumberPopupShell;

/**
 * Event handler for KeyEvents on the ChapterNumberPopupShell.
 *
 * @author lorandKutvolgyi
 *
 */
public class ChapterNumberPopupListener extends KeyAdapter {
    private static final int CACHE_CLEARING_DELAY = 1000;
    private static final int POPUP_CLOSING_DELAY = 1000;
    private static final int MAXIMUM_CACHE_SIZE = 3;
    private final List<Character> cache = new ArrayList<>(3);
    private final Composite comp;
    private final ChapterNumberPopupShell shell;

    public ChapterNumberPopupListener(Composite comp, ChapterNumberPopupShell shell) {
        this.comp = comp;
        this.shell = shell;
    }

    @Override
    public void keyPressed(final KeyEvent e) {
        if (e.keyCode == SWT.ESC) {
            shell.close();
        }
        if (!(e.keyCode >= '0' && e.keyCode <= '9')) {
            return;
        }
        if (cache.isEmpty() && e.keyCode == '0') {
            return;
        }
        if (cache.size() < MAXIMUM_CACHE_SIZE) {
            cache.add((char) e.keyCode);
        }
        if (!comp.isDisposed() && !cache.isEmpty() && comp.getChildren().length >= Integer.valueOf(getCachedChars())) {
            selectNumLabel(getCachedChars(), comp);
        }
        clearCacheWithDelay();
    }

    private void clearCacheWithDelay() {
        Display.getCurrent().timerExec(CACHE_CLEARING_DELAY, new Runnable() {
            @Override
            public void run() {
                cache.clear();
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
        event.data = POPUP_CLOSING_DELAY;
        label.notifyListeners(SWT.MouseDown, event);
    }
}
