package com.lory.biblereader.perspective.model;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.verify;

import java.util.Observable;
import java.util.Observer;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.internal.verification.VerificationModeFactory;
import org.powermock.reflect.Whitebox;

/**
 * Unit test for {@link CurrentChapter}.
 *
 * @author lorandKutvolgyi
 *
 */
public class CurrentChapterTest {
    @Mock
    private CurrentChapter underTest;
    @Mock
    private Chapter chapter;
    @Mock
    private Observer observer;

    @Before
    public void setUp() {
        MockitoAnnotations.initMocks(this);
        Whitebox.setInternalState(CurrentChapter.class, "instance", underTest);
        CurrentChapter.setCurrentChapter(chapter);
    }

    @Test
    public void testSetCurrentChapterWhenChapterIsSetShouldNotifyObservers() {
        verify((Observable) underTest, VerificationModeFactory.times(1)).notifyObservers();
    }

    @Test
    public void testGetCurrentChapterWhenChapterIsSetShouldReturnThatChapter() {
        assertEquals(chapter, CurrentChapter.getCurrentChapter());
    }
}
