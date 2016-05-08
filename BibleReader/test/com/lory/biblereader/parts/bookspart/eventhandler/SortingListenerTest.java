package com.lory.biblereader.parts.bookspart.eventhandler;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.List;

import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.ViewerSorter;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyEvent;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;
import org.powermock.reflect.Whitebox;

/**
 * Unit test for {@link SortingListener}.
 *
 * @author lorandKutvolgyi
 *
 */
@PrepareForTest(SortingListener.class)
@RunWith(PowerMockRunner.class)
public class SortingListenerTest {
    private SortingListener underTest;
    @Mock
    private TreeViewer viewer;
    @Mock
    private KeyEvent event;
    @Mock
    private List<ViewerSorter> sorters;
    @Mock
    private ViewerSorter sorter;

    @Before
    public void setUp() {
        MockitoAnnotations.initMocks(this);
        underTest = new SortingListener(viewer);
        Whitebox.setInternalState(SortingListener.class, "sorters", sorters);
    }

    @Test
    public void testKeyPressedWhenCtrlAndOArePressedShouldTheNextOrderIsSet() {
        event.stateMask = SWT.CTRL;
        event.keyCode = 'o';
        when(sorters.size()).thenReturn(2);
        when(sorters.get(0)).thenReturn(null);
        when(sorters.get(1)).thenReturn(sorter);

        underTest.keyPressed(event);

        verify(sorters).get(1);
        verify(viewer).setSorter(sorter);

        underTest.keyPressed(event);

        verify(sorters).get(0);
        verify(viewer).setSorter(null);

    }
}
