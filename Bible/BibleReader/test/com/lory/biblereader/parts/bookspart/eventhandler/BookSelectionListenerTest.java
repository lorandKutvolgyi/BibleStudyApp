package com.lory.biblereader.parts.bookspart.eventhandler;

import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.powermock.api.mockito.PowerMockito.whenNew;

import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TreeSelection;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.parts.bookspart.chapternumberpopup.ChapterNumberPopupShell;

/**
 * Unit test for {@link BookSelectionListener}.
 *
 * @author lorandKutvolgyi
 *
 */
@RunWith(PowerMockRunner.class)
@PrepareForTest({ BookSelectionListener.class })
public class BookSelectionListenerTest {
    private BookSelectionListener underTest;
    @Mock
    private ChapterNumberPopupShell chapterNumberPopupShell;
    @Mock
    private SelectionChangedEvent event;
    @Mock
    private TreeSelection treeSelection;
    @Mock
    private Book book;

    @Before
    public void SetUp() {
        underTest = new BookSelectionListener();
    }

    @Test
    public void testSelectionChangedWhenSelectionIsNeededShouldOpenTheChapterNumberPopupShell() throws Exception {
        when(event.getSelection()).thenReturn(treeSelection);
        when(treeSelection.getFirstElement()).thenReturn(book);
        whenNew(ChapterNumberPopupShell.class).withArguments(event, book).thenReturn(chapterNumberPopupShell);

        underTest.selectionChanged(event);

        verify(chapterNumberPopupShell).open();
    }

    @Test
    public void testSelectionChangedWhenSelectionIsNotNeededShouldNotOpenTheChapterNumberPopupShell() throws Exception {
        underTest.preventSelectionChangeEvent();

        underTest.selectionChanged(event);

        verify(chapterNumberPopupShell, never()).open();
    }
}
