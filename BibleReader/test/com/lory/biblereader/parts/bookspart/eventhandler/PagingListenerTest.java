package com.lory.biblereader.parts.bookspart.eventhandler;

import static org.mockito.Matchers.any;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.when;

import java.util.List;

import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.widgets.Display;
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

/**
 * Unit test for {@link PagingListener}.
 *
 * @author lorandKutvolgyi
 *
 */
@RunWith(PowerMockRunner.class)
@PrepareForTest({ Display.class, CurrentChapter.class })
public class PagingListenerTest {
    PagingListener underTest;
    @Mock
    private Book book;
    @Mock
    private Chapter chapter;
    @Mock
    private Chapter nextChapter;
    @Mock
    private Chapter previousChapter;
    @Mock
    private List<Chapter> chapters;
    @Mock
    private KeyEvent event;

    @Before
    public void SetUp() {
        MockitoAnnotations.initMocks(this);
        PowerMockito.mockStatic(CurrentChapter.class);
        underTest = new PagingListener();
    }

    @Test
    public void testKeyPressedWhenAltAndArrowRightArePressedAndThereIsNextChapterShouldSetCurrentChapter() {
        PowerMockito.when(CurrentChapter.getCurrentChapter()).thenReturn(chapter);
        int alt = 65536;
        event.stateMask = alt;
        int arrowRight = 16777220;
        event.keyCode = arrowRight;
        when(chapter.getId()).thenReturn(1);
        when(chapter.getBook()).thenReturn(book);
        when(book.getChapters()).thenReturn(chapters);
        when(chapters.size()).thenReturn(2);
        when(book.getChapter(2)).thenReturn(nextChapter);

        underTest.keyPressed(event);

        PowerMockito.verifyStatic();
        CurrentChapter.setCurrentChapter(nextChapter);
    }

    @Test
    public void testKeyPressedWhenAltAndArrowLeftArePressedAndThereIsPreviousChapterShouldSetCurrentChapter() {
        PowerMockito.when(CurrentChapter.getCurrentChapter()).thenReturn(chapter);
        int alt = 65536;
        event.stateMask = alt;
        int arrowLeft = 16777219;
        event.keyCode = arrowLeft;
        when(chapter.getId()).thenReturn(2);
        when(chapter.getBook()).thenReturn(book);
        when(book.getChapters()).thenReturn(chapters);
        when(chapters.size()).thenReturn(2);
        when(book.getChapter(1)).thenReturn(previousChapter);

        underTest.keyPressed(event);

        PowerMockito.verifyStatic();
        CurrentChapter.setCurrentChapter(previousChapter);
    }

    @Test
    public void testKeyPressedWhenAltAndArrowRightArePressedAndThereIsNoNextChapterShouldNotSetCurrentChapter() {
        PowerMockito.when(CurrentChapter.getCurrentChapter()).thenReturn(chapter);
        int alt = 65536;
        event.stateMask = alt;
        int arrowRight = 16777220;
        event.keyCode = arrowRight;
        when(chapter.getId()).thenReturn(2);
        when(chapter.getBook()).thenReturn(book);
        when(book.getChapters()).thenReturn(chapters);
        when(chapters.size()).thenReturn(2);

        underTest.keyPressed(event);

        PowerMockito.verifyStatic(never());
        CurrentChapter.setCurrentChapter(any());
    }

    @Test
    public void testKeyPressedWhenAltAndArrowLeftArePressedAndThereIsNoPreviousChapterShouldNotSetCurrentChapter() {
        PowerMockito.when(CurrentChapter.getCurrentChapter()).thenReturn(chapter);
        int alt = 65536;
        event.stateMask = alt;
        int arrowLeft = 16777219;
        event.keyCode = arrowLeft;
        when(chapter.getId()).thenReturn(1);
        when(chapter.getBook()).thenReturn(book);
        when(book.getChapters()).thenReturn(chapters);
        when(chapters.size()).thenReturn(2);

        underTest.keyPressed(event);

        PowerMockito.verifyStatic(never());
        CurrentChapter.setCurrentChapter(any());
    }
}
