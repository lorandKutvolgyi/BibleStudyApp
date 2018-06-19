package com.lory.biblereader.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;

import java.util.HashSet;
import java.util.Set;

import org.junit.Before;
import org.junit.Test;
import org.powermock.reflect.Whitebox;

public class TestamentTest {

	@Before
	public void setUp() {
		Set<Book> books = new HashSet<>();
		books.add(OldTestamentBooks.GENESIS);
		Whitebox.setInternalState(Testament.OLD_TESTAMENT, Set.class, books);
	}

	@Test
	public void testGetTestamentWhenNameIsCorrectShouldReturnTheTestament() {
		assertEquals(Testament.OLD_TESTAMENT, Testament.getTestament("OldTestament"));
	}

	@Test
	public void testGetTestamentWhenNameIsNotCorrectShouldReturnNull() {
		assertNull(Testament.getTestament("NonExistentTestament"));
	}

	@Test
	public void testGetBookWhenTitleIsCorrectShouldReturnTheBook() {
		assertEquals(OldTestamentBooks.GENESIS, Testament.OLD_TESTAMENT.getBook("Gen"));
	}

	@Test
	public void testGetBookWhenTitleIsNotCorrectShouldReturnNull() {
		assertNull(Testament.OLD_TESTAMENT.getBook("NonExistentBook"));
	}
}
