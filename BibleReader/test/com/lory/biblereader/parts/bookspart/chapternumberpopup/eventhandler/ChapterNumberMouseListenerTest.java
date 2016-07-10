package com.lory.biblereader.parts.bookspart.chapternumberpopup.eventhandler;

import static org.mockito.Matchers.any;
import static org.mockito.Matchers.eq;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.powermock.api.mockito.PowerMockito;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.parts.bookspart.chapternumberpopup.ChapterNumberPopupShell;

/**
 * Unit test for {@link ChapterNumberMouseListener}.
 *
 * @author lorandKutvolgyi
 *
 */
@RunWith(PowerMockRunner.class)
@PrepareForTest({ Display.class, CurrentChapter.class })
public class ChapterNumberMouseListenerTest {
    private ChapterNumberMouseListener underTest;
    @Mock
    private Book book;
    @Mock
    private Chapter chapter;
    @Mock
    private Label label;
    @Mock
    private ChapterNumberPopupShell shell;
    @Mock
    private MouseEvent event;
    @Mock
    private Display display;

    @Before
    public void SetUp() {
        MockitoAnnotations.initMocks(this);
        PowerMockito.mockStatic(CurrentChapter.class);
        PowerMockito.mockStatic(Display.class);
        underTest = new ChapterNumberMouseListener(book, label, 1, shell);
    }

    @Test
    public void testMouseDownShouldSetCurrentChapterAndCloseTheShell() {
        when(book.getChapter(1)).thenReturn(chapter);
        PowerMockito.when(Display.getCurrent()).thenReturn(display);

        underTest.mouseDown(event);

        PowerMockito.verifyStatic();
        CurrentChapter.setCurrentChapter(chapter);
        verify(shell).close();
    }

    @Test
    public void testMouseDownWhenEventDataIsSetShouldSetCurrentChapterAndCloseTheShellInDelayed() {
        event.data = 2;
        when(book.getChapter(1)).thenReturn(chapter);
        PowerMockito.when(Display.getCurrent()).thenReturn(display);

        underTest.mouseDown(event);

        PowerMockito.verifyStatic();
        CurrentChapter.setCurrentChapter(chapter);
        verify(display).timerExec(eq((int) event.data), any());
    }
}
