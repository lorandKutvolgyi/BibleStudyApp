package com.lory.biblereader.parts.bookspart.eventhandler;

import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;

import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.widgets.Display;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;

/**
 * Unit test for {@link NavigationKeyListener}.
 *
 * @author lorandKutvolgyi
 *
 */
@RunWith(PowerMockRunner.class)
@PrepareForTest({ Display.class })
public class NavigationKeyListenerTest {
    private NavigationKeyListener underTest;
    @Mock
    private BookSelectionListener bookSelectionListener;
    @Mock
    private KeyEvent event;

    @Before
    public void SetUp() {
        System.out.println(getClass().getName() + Thread.currentThread().getContextClassLoader());
        MockitoAnnotations.initMocks(this);
        underTest = new NavigationKeyListener(bookSelectionListener);
    }

    @Test
    public void testKeyPressedWhenKeyIsEnterShouldNotPrenentOfTriggeringSelectionEvent() throws Exception {
        int enter = 13;
        event.keyCode = enter;

        underTest.keyPressed(event);

        verify(bookSelectionListener, never()).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsSpaceShouldNotPrenentOfTriggeringSelectionEvent() throws Exception {
        int space = 32;
        event.keyCode = space;

        underTest.keyPressed(event);

        verify(bookSelectionListener, never()).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsArrowUpShouldPrenentOfTriggeringSelectionEvent() throws Exception {
        int arrowUp = 16777217;
        event.keyCode = arrowUp;

        underTest.keyPressed(event);

        verify(bookSelectionListener).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsArrowDownShouldPrenentOfTriggeringSelectionEvent() throws Exception {
        int arrowDown = 16777218;
        event.keyCode = arrowDown;

        underTest.keyPressed(event);

        verify(bookSelectionListener).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsArrowRightShouldPrenentOfTriggeringSelectionEvent() throws Exception {
        int arrowRight = 16777220;
        event.keyCode = arrowRight;

        underTest.keyPressed(event);

        verify(bookSelectionListener).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsPageUpShouldPrenentOfTriggeringSelectionEvent() throws Exception {
        int pageUp = 16777221;
        event.keyCode = pageUp;

        underTest.keyPressed(event);

        verify(bookSelectionListener).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsPageDownShouldPrenentOfTriggeringSelectionEvent() throws Exception {
        int pageDown = 16777222;
        event.keyCode = pageDown;

        underTest.keyPressed(event);

        verify(bookSelectionListener).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsALetterShouldPrenentOfTriggeringSelectionEvent() throws Exception {
        char aLetter = 'c';
        event.keyCode = aLetter;

        underTest.keyPressed(event);

        verify(bookSelectionListener).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsDotShouldPrenentOfTriggeringSelectionEvent() throws Exception {
        event.keyCode = '.';

        underTest.keyPressed(event);

        verify(bookSelectionListener).preventSelectionChangeEvent();
    }
}
