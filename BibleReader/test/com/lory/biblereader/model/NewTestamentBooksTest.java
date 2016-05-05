package com.lory.biblereader.model;

import static org.mockito.Mockito.verify;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.powermock.api.mockito.PowerMockito;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;

import com.lory.biblereader.model.NewTestamentBooks;
import com.lory.biblereader.model.dao.ChapterDao;
import com.lory.biblereader.model.dao.ChapterDaoFactory;

/**
 * Unit test for {@link NewTestamentBooks}.
 *
 * @author lorandKutvolgyi
 *
 */
@RunWith(PowerMockRunner.class)
public class NewTestamentBooksTest {
    @Mock
    private ChapterDao dao;

    @Before
    public void setUp() {
        MockitoAnnotations.initMocks(this);
        PowerMockito.mockStatic(ChapterDaoFactory.class);
    }

    @PrepareForTest({ ChapterDaoFactory.class })
    @Test
    public void testGetChaptersShouldCallTheFindAllChaptersMethodOfDao() {
        PowerMockito.when(ChapterDaoFactory.getInstance()).thenReturn(dao);
        NewTestamentBooks.MATTHEW.getChapters();
        verify(dao).findAllChapters(NewTestamentBooks.MATTHEW);
    }

    @PrepareForTest({ ChapterDaoFactory.class })
    @Test
    public void testGetChapterShouldCallTheFindChapterByIdMethodOfDao() {
        PowerMockito.when(ChapterDaoFactory.getInstance()).thenReturn(dao);
        NewTestamentBooks.MATTHEW.getChapter(1);
        verify(dao).findChapterById(NewTestamentBooks.MATTHEW, 1);
    }
}
