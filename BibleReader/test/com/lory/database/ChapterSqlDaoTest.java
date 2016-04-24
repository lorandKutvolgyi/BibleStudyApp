package com.lory.database;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Before;
import org.junit.Test;

import com.lory.biblereader.perspective.model.Chapter;
import com.lory.biblereader.perspective.model.NewTestamentBooks;
import com.lory.biblereader.perspective.model.dao.ChapterSqlDao;

/**
 * Integration test for {@link ChapterSqlDao}. The database server have to work
 * to make this test work.
 *
 * @author lorandKutvolgyi
 *
 */
public class ChapterSqlDaoTest {
    ChapterSqlDao underTest;

    @Before
    public void setUp() {
        underTest = new ChapterSqlDao();
    }

    @Test
    public void testFindByChapterIdWhenIdIsCorrectShouldReturnTheChapter() {
        Chapter chapter = underTest.findChapterById(NewTestamentBooks.I_JOHN, 1);
        assertTrue(trimText(chapter).startsWith("Az élet igéjének szemtanúi"));
        assertEquals(1, chapter.getId());
    }

    private String trimText(Chapter chapter) {
        String text = chapter.getText();
        return text.trim();
    }

    @Test(expected = IllegalArgumentException.class)
    public void testFindByChapterIdWhenIdIsNotCorrectShouldThrowException() {
        underTest.findChapterById(NewTestamentBooks.I_JOHN, 11);
    }

    @Test
    public void testFindAll() {
        List<Chapter> books = underTest.findAllChapters(NewTestamentBooks.I_JOHN);

        assertEquals(5, books.size());

        Chapter firstChapter = books.get(0);
        assertEquals(1, firstChapter.getId());
        Chapter secondChapter = books.get(1);
        assertEquals(2, secondChapter.getId());
        Chapter thirdChapter = books.get(2);
        assertEquals(3, thirdChapter.getId());
        Chapter fourthChapter = books.get(3);
        assertEquals(4, fourthChapter.getId());
        Chapter fifthChapter = books.get(4);
        assertEquals(5, fifthChapter.getId());

        assertTrue(trimText(firstChapter).startsWith("Az élet igéjének szemtanúi"));
        assertTrue(trimText(secondChapter).startsWith("Krisztus parancsolatainak megtartása"));
        assertTrue(trimText(thirdChapter).startsWith("Isten gyermekei és az ördög gyermekei"));
        assertTrue(trimText(fourthChapter).startsWith("A lelkek megvizsgálása"));
        assertTrue(trimText(fifthChapter).startsWith("A hit győzelme"));
    }
}
