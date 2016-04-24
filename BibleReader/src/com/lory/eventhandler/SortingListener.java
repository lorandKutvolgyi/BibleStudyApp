package com.lory.eventhandler;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.ViewerSorter;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;

import com.lory.eventhandler.booksorder.HistoricalBooksOrder;

/**
 * EventHandler for sorting event.
 * 
 * @author lorandKutvolgyi
 *
 */
public class SortingListener extends KeyAdapter {
    private static final List<ViewerSorter> sorters = new ArrayList<>();
    private static int index = 0;
    private final TreeViewer viewer;

    static {
        sorters.add(null);
        sorters.add(new HistoricalBooksOrder());
    }

    public SortingListener(TreeViewer viewer) {
        this.viewer = viewer;
    }

    @Override
    public void keyPressed(KeyEvent e) {
        if (e.stateMask == SWT.CTRL && e.keyCode == 'o') {
            viewer.setSorter(sorters.get(next()));
        }
    }

    private static int next() {
        if (index < sorters.size() - 1) {
            return ++index;
        }
        index = 0;
        return index;
    }
}
