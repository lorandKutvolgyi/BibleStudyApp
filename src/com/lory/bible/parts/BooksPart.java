package com.lory.bible.parts;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.widgets.Composite;

public class BooksPart {
    @Inject
    public BooksPart() {
        // TODO Your code here
    }

    @PostConstruct
    public void postConstruct(Composite parent) {
        createTree(parent);
        parent.setLayout(null);

        CLabel lblOldTestament = new CLabel(parent, SWT.NONE);
        lblOldTestament.setBounds(10, 10, 84, 21);
        lblOldTestament.setText("Old Testament");

        CLabel lblGenesis = new CLabel(parent, SWT.NONE);
        int baseYPos = 39;
        int verticalDistance = 17;
        lblGenesis.setBounds(20, baseYPos, 61, 21);
        lblGenesis.setText("Genesis");

    }

    private void createTree(Composite parent) {
    }
}