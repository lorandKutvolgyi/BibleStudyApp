package com.lory.biblereader.model.dao;

import static org.junit.Assert.assertTrue;

import org.junit.Test;

/**
 * Unit test for {@link ChapterDaoFactory}.
 *
 * @author lorandKutvolgyi
 *
 */
public class ChapterDaoFactoryTest {

    @Test
    public void testGetInstanceShouldReturnChapterDao() {
        assertTrue(ChapterDaoFactory.getInstance() instanceof ChapterDao);
    }
}
