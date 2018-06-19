package com.lory.biblereader.model.dao;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.NewTestamentBooks;

/**
 * Integration test for {@link BibleDao}. The database server have to work
 * to make this test work.
 *
 * @author lorandKutvolgyi
 *
 */
public class ChapterSqlDaoTest {
    private BibleDao underTest;

    @Before
    public void setUp() {
        underTest = new BibleDao();
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
    public void testFindAllShouldReturnAllChaptersOfTheBook() {
        List<Chapter> chapters = underTest.getBookSize(NewTestamentBooks.I_JOHN);
        assertEquals(5, chapters.size());
    }

    @Test
    public void testFindAllShouldReturnCorrectChapters() {
        List<Chapter> chapters = underTest.getBookSize(NewTestamentBooks.I_JOHN);
        assertTrue(isCorrectChapters(chapters));
    }

    private boolean isCorrectChapters(List<Chapter> chapters) {
        List<String> texts = new ArrayList<>();
        texts.add("Az élet igéjének szemtanúi");
        texts.add("Krisztus parancsolatainak megtartása");
        texts.add("Isten gyermekei és az ördög gyermekei");
        texts.add("A lelkek megvizsgálása");
        texts.add("A hit győzelme");
        for (int i = 0; i < chapters.size(); i++) {
            if (i + 1 != chapters.get(i).getId()) {
                return false;
            }
            if (!trimText(chapters.get(i)).startsWith(texts.get(i))) {
                return false;
            }
        }
        return true;
    }
}
