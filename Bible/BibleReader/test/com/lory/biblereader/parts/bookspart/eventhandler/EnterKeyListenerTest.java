package com.lory.biblereader.parts.bookspart.eventhandler;

import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.widgets.Tree;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.powermock.modules.junit4.PowerMockRunner;

/**
 * Unit test for {@link EnterKeyListener}.
 *
 * @author lorandKutvolgyi
 *
 */
@Ignore
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
        underTest = new EnterKeyListener(books);
    }

    @Test
    public void testKeyPressedWhenSelectedBookExistsAndEnterIsPressedShouldTriggerSelectionEvent() throws Exception {
        event.keyCode = SWT.CR;
        when(books.getSelection()).thenReturn(selection);
        when(selection.isEmpty()).thenReturn(false);
        when(books.getTree()).thenReturn(tree);

        underTest.keyPressed(event);

        verify(tree).notifyListeners(SWT.Selection, null);
    }

    @Test
    public void testKeyPressedWhenSelectedBookDoesNotExistShouldNotTriggerSelectionEvent() throws Exception {
        event.keyCode = SWT.CR;
        when(books.getSelection()).thenReturn(selection);
        when(selection.isEmpty()).thenReturn(true);
        when(books.getTree()).thenReturn(tree);

        underTest.keyPressed(event);

        verify(tree, never()).notifyListeners(SWT.Selection, null);
    }

    @Test
    public void testKeyPressedWhenNotEnterIsPressedShouldNotTriggerSelectionEvent() throws Exception {
        event.keyCode = SWT.BS;
        when(books.getSelection()).thenReturn(selection);
        when(selection.isEmpty()).thenReturn(false);
        when(books.getTree()).thenReturn(tree);

        underTest.keyPressed(event);

        verify(tree, never()).notifyListeners(SWT.Selection, null);
    }
}
