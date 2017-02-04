package com.lory.biblereader.parts.bookspart.eventhandler;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.List;

import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.ViewerSorter;
import org.eclipse.swt.events.KeyEvent;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.powermock.api.mockito.PowerMockito;
import org.powermock.api.support.membermodification.MemberModifier;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;

import com.lory.biblereader.parts.bookspart.treesorter.HistoricalBooksOrder;

/**
 * Unit test for {@link SortingListener}.
 *
 * @author lorandKutvolgyi
 *
 */
@RunWith(PowerMockRunner.class)
@PrepareForTest({ SortingListener.class, HistoricalBooksOrder.class })
public class SortingListenerTest {
    private SortingListener underTest;
    @Mock
    private TreeViewer viewer;
    @Mock
    private KeyEvent event;
    @Mock
    private List<ViewerSorter> sorters;
    @Mock
    private HistoricalBooksOrder historicalBooksOrder;

    @Before
    public void setUp() throws Exception {
        PowerMockito.whenNew(HistoricalBooksOrder.class).withNoArguments().thenReturn(historicalBooksOrder);
        underTest = new SortingListener(viewer);
        MemberModifier.field(SortingListener.class, "sorters").set(underTest, sorters);
    }

    @Test
    public void testKeyPressedWhenCtrlAndOArePressedShouldTheNextOrderIsSet() {
        int ctrl = 262144;
        event.stateMask = ctrl;
        event.keyCode = 'o';
        when(sorters.size()).thenReturn(2);
        when(sorters.get(0)).thenReturn(null);
        when(sorters.get(1)).thenReturn(historicalBooksOrder);

        underTest.keyPressed(event);

        verify(sorters).get(1);
        verify(viewer).setSorter(historicalBooksOrder);

        underTest.keyPressed(event);

        verify(sorters).get(0);
        verify(viewer).setSorter(null);

    }
}
