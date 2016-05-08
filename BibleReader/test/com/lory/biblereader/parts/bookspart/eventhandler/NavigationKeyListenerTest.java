package com.lory.biblereader.parts.bookspart.eventhandler;

import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyEvent;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

/**
 * Unit test for {@link NavigationKeyListener}.
 *
 * @author lorandKutvolgyi
 *
 */
public class NavigationKeyListenerTest {
    private NavigationKeyListener underTest;
    @Mock
    private BookSelectionListener bookSelectionListener;
    @Mock
    private KeyEvent event;

    @Before
    public void SetUp() {
        MockitoAnnotations.initMocks(this);
        underTest = new NavigationKeyListener(bookSelectionListener);
    }

    @Test
    public void testKeyPressedWhenKeyIsEnterShouldNotPrenentOfTriggeringSelectionEvent() throws Exception {
        event.keyCode = SWT.CR;

        underTest.keyPressed(event);

        verify(bookSelectionListener, never()).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsSpaceShouldNotPrenentOfTriggeringSelectionEvent() throws Exception {
        event.keyCode = SWT.SPACE;

        underTest.keyPressed(event);

        verify(bookSelectionListener, never()).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsArrowUpShouldPrenentOfTriggeringSelectionEvent() throws Exception {
        event.keyCode = SWT.ARROW_UP;

        underTest.keyPressed(event);

        verify(bookSelectionListener).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsArrowDownShouldPrenentOfTriggeringSelectionEvent() throws Exception {
        event.keyCode = SWT.ARROW_DOWN;

        underTest.keyPressed(event);

        verify(bookSelectionListener).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsArrowRightShouldPrenentOfTriggeringSelectionEvent() throws Exception {
        event.keyCode = SWT.ARROW_RIGHT;

        underTest.keyPressed(event);

        verify(bookSelectionListener).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsPageUpShouldPrenentOfTriggeringSelectionEvent() throws Exception {
        event.keyCode = SWT.PAGE_UP;

        underTest.keyPressed(event);

        verify(bookSelectionListener).preventSelectionChangeEvent();
    }

    @Test
    public void testKeyPressedWhenKeyIsPageDownShouldPrenentOfTriggeringSelectionEvent() throws Exception {
        event.keyCode = SWT.PAGE_DOWN;

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
