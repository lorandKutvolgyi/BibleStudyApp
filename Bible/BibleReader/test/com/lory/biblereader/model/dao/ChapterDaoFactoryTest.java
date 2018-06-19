package com.lory.biblereader.model.dao;

import static org.junit.Assert.assertTrue;

import org.junit.Test;

/**
 * Unit test for {@link BibleDaoFactory}.
 *
 * @author lorandKutvolgyi
 *
 */
public class ChapterDaoFactoryTest {

	@Test
	public void testGetInstanceShouldReturnChapterDao() {
		assertTrue(BibleDaoFactory.getInstance() instanceof BibleDao);
	}
}
