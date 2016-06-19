package com.lory.biblereader.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;

import java.util.HashSet;
import java.util.Set;

import org.eclipse.swt.widgets.Display;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;
import org.powermock.reflect.Whitebox;

/**
 * Unit test for {@link Testament}.
 *
 * @author lorandKutvolgyi
 *
 */
@RunWith(PowerMockRunner.class)
@PrepareForTest({ Display.class })
public class TestamentTest {
    Testament underTest;

    @Before
    public void setUp() {
        System.out.println(getClass().getName() + Thread.currentThread().getContextClassLoader());
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
        assertEquals(OldTestamentBooks.GENESIS, Testament.OLD_TESTAMENT.getBook("GENESIS"));
    }

    @Test
    public void testGetBookWhenTitleIsNotCorrectShouldReturnNull() {
        assertNull(Testament.OLD_TESTAMENT.getBook("NonExistentBook"));
    }
}
