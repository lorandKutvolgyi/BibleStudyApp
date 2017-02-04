package com.lory.biblereader.parts.bookspart.chapternumberpopup.eventhandler;

import static org.mockito.Matchers.any;
import static org.mockito.Matchers.eq;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.Iterator;
import java.util.List;

import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.powermock.reflect.Whitebox;

import com.lory.biblereader.parts.bookspart.chapternumberpopup.ChapterNumberPopupShell;

/**
 * Unit test for {@link ChapterNumberKeyListener}.
 *
 * @author lorandKutvolgyi
 *
 */
@Ignore
public class ChapterNumberKeyListenerTest {
    private ChapterNumberKeyListener underTest;
    @Mock
    private Composite composite;
    @Mock
    private ChapterNumberPopupShell shell;
    @Mock
    private KeyEvent event;
    @Mock
    private List<Character> cache;
    @Mock
    private Display display;
    @Mock
    private Label label;
    @Mock
    private Iterator<Character> iterator;

    @Before
    public void SetUp() {
        MockitoAnnotations.initMocks(this);
        underTest = new ChapterNumberKeyListener(composite);
        underTest.setDisplay(display);
    }

    @Test
    public void testKeyPressedWhenKeyIsEscShouldCloseTheShell() {
        int esc = 27;
        event.keyCode = esc;
        when(event.getSource()).thenReturn(shell);

        underTest.keyPressed(event);

        verify(shell).close();
    }

    @Test
    public void testKeyPressedWhenKeyIsNeitherANumberNorEscShouldDoNothing() {
        event.keyCode = 'a';
        Whitebox.setInternalState(underTest, "cache", cache);

        underTest.keyPressed(event);

        verify(shell, never()).close();
        verify(cache, never()).clear();
        verify(cache, never()).add(any());
    }

    @Test
    public void testKeyPressedWhenKeyIsZeroAndCacheIsEmptyShouldDoNothing() {
        event.keyCode = '0';
        Whitebox.setInternalState(underTest, "cache", cache);
        when(cache.isEmpty()).thenReturn(true);

        underTest.keyPressed(event);

        verify(shell, never()).close();
        verify(cache, never()).clear();
        verify(cache, never()).add(any());
    }

    @Test
    public void testKeyPressedWhenKeyIsANonZeroOrCacheIsNotEmptyAndCacheIsNotFullShouldAddNumberToCacheAndClickTheLabel() {
        event.keyCode = '1';
        Whitebox.setInternalState(underTest, "cache", cache);
        when(cache.size()).thenReturn(1);
        when(cache.add((char) event.keyCode)).thenReturn(true);
        when(composite.isDisposed()).thenReturn(false);
        when(cache.isEmpty()).thenReturn(false);
        Control[] controls = new Control[21];
        controls[20] = label;
        when(composite.getChildren()).thenReturn(controls);
        when(cache.iterator()).thenReturn(iterator);
        when(iterator.hasNext()).thenReturn(true, true, false, true, true, false);
        when(iterator.next()).thenReturn('2', (char) event.keyCode, '2', (char) event.keyCode);
        when(composite.getChildren()).thenReturn(controls);

        underTest.keyPressed(event);

        verify(cache).add((char) event.keyCode);
        int mouseDown = 3;
        verify(label).notifyListeners(eq(mouseDown), any());
    }
}
