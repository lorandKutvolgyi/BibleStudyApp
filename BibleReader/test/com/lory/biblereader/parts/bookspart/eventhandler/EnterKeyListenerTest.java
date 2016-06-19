package com.lory.biblereader.parts.bookspart.eventhandler;

import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.widgets.Tree;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.powermock.modules.junit4.PowerMockRunner;

/**
 * Unit test for {@link EnterKeyListener}.
 *
 * @author lorandKutvolgyi
 *
 */
@RunWith(PowerMockRunner.class)
public class EnterKeyListenerTest {
    private EnterKeyListener underTest;
    @Mock
    private KeyEvent event;
    @Mock
    private TreeViewer books;
    @Mock
    private Tree tree;
    @Mock
    private ISelection selection;

    @Before
    public void SetUp() {
        MockitoAnnotations.initMocks(this);
        underTest = new EnterKeyListener(books);
    }

    @Test
    public void testKeyPressedWhenSelectedBookExistsAndEnterIsPressedShouldTriggerSelectionEvent() throws Exception {
        int enter = 13;
        event.keyCode = enter;
        when(books.getSelection()).thenReturn(selection);
        when(selection.isEmpty()).thenReturn(false);
        when(books.getTree()).thenReturn(tree);

        underTest.keyPressed(event);

        int selection = 13;
        verify(tree).notifyListeners(selection, null);
    }

    @Test
    public void testKeyPressedWhenSelectedBookDoesNotExistShouldNotTriggerSelectionEvent() throws Exception {
        int enter = 13;
        event.keyCode = enter;
        when(books.getSelection()).thenReturn(selection);
        when(selection.isEmpty()).thenReturn(true);
        when(books.getTree()).thenReturn(tree);

        underTest.keyPressed(event);

        int selection = 13;
        verify(tree, never()).notifyListeners(selection, null);
    }

    @Test
    public void testKeyPressedWhenNotEnterIsPressedShouldNotTriggerSelectionEvent() throws Exception {
        int backSpace = 8;
        event.keyCode = backSpace;
        when(books.getSelection()).thenReturn(selection);
        when(selection.isEmpty()).thenReturn(false);
        when(books.getTree()).thenReturn(tree);

        underTest.keyPressed(event);

        int selection = 13;
        verify(tree, never()).notifyListeners(selection, null);
    }
}
