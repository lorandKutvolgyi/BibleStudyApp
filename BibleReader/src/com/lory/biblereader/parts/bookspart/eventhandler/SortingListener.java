package com.lory.biblereader.parts.bookspart.eventhandler;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.ViewerSorter;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;

import com.lory.biblereader.parts.bookspart.treesorter.HistoricalBooksOrder;

/**
 * EventHandler for sorting event.
 *
 * @author lorandKutvolgyi
 *
 */
public class SortingListener extends KeyAdapter {
    private final List<ViewerSorter> sorters = new ArrayList<>();
    private int index = 0;
    private final TreeViewer viewer;

    public SortingListener(TreeViewer viewer) {
        this.viewer = viewer;
        sorters.add(null);
        sorters.add(new HistoricalBooksOrder());
    }

    @Override
    public void keyPressed(KeyEvent event) {
        if (event.stateMask == SWT.CTRL && event.keyCode == 'o') {
            viewer.setSorter(sorters.get(next()));
        }
    }

    private int next() {
        if (index == sorters.size() - 1) {
            index = 0;
            return index;
        }
        return ++index;
    }
}
