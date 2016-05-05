package com.lory.biblereader.model.dao;

import static org.junit.Assert.assertTrue;

import org.junit.Test;

import com.lory.biblereader.model.dao.ChapterDao;
import com.lory.biblereader.model.dao.ChapterDaoFactory;

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
