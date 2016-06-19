package com.lory.biblereader.parts.bookspart.treesorter;

import org.eclipse.swt.widgets.Display;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;

import com.lory.biblereader.model.OldTestamentBooks;
import com.lory.biblereader.model.Testament;

/**
 * Unit test for {@link HistoricalBooksOrder}.
 *
 * @author lorandKutvolgyi
 *
 */
@RunWith(PowerMockRunner.class)
@PrepareForTest({ Display.class })
public class HistoricalBooksOrderTest {
    private HistoricalBooksOrder underTest;

    @Before
    public void setUp() {
        System.out.println(getClass().getName() + Thread.currentThread().getContextClassLoader());
        underTest = new HistoricalBooksOrder();
    }

    @Test
    public void testCompareWhenBooksAreComparedInRightOrderShouldReturnNegativeValue() {
        int result = underTest.compare(null, OldTestamentBooks.JOB, OldTestamentBooks.EXODUS);
        Assert.assertTrue(result < 0);
    }

    @Test
    public void testCompareWhenBooksAreComparedInNotRightOrderShouldReturnPositiveValue() {
        int result = underTest.compare(null, OldTestamentBooks.EXODUS, OldTestamentBooks.JOB);
        Assert.assertTrue(result > 0);
    }

    @Test
    public void testCompareWhenTheSameBooksAreComparedShouldReturnZero() {
        int result = underTest.compare(null, OldTestamentBooks.EXODUS, OldTestamentBooks.EXODUS);
        Assert.assertTrue(result == 0);
    }

    @Test
    public void testCompareWhenTestamentsAreComparedInRightOrderShouldReturnNegativeValue() {
        int result = underTest.compare(null, Testament.OLD_TESTAMENT, Testament.NEW_TESTAMENT);
        Assert.assertTrue(result < 0);
    }

    @Test
    public void testCompareWhenTestamentsAreComparedInNotRightOrderShouldReturnPositiveValue() {
        int result = underTest.compare(null, Testament.NEW_TESTAMENT, Testament.OLD_TESTAMENT);
        Assert.assertTrue(result > 0);
    }

    @Test
    public void testCompareWhenTheSameTestamentsAreComparedShouldReturnZero() {
        int result = underTest.compare(null, Testament.OLD_TESTAMENT, Testament.OLD_TESTAMENT);
        Assert.assertTrue(result == 0);
    }
}
