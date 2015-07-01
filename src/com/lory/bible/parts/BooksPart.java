 package com.lory.bible.parts;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.TreeColumn;

public class BooksPart {
	@Inject
	public BooksPart() {
		//TODO Your code here
	}
	
	@PostConstruct
	public void postConstruct(Composite parent) {
		parent.setLayout(new GridLayout(2 ,false));
		createTree(parent);
		new Label(parent, SWT.NONE);
	}

	private void createTree(Composite parent) {
		Tree tree = new Tree(parent, SWT.BORDER);
		tree.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true, 1, 1));
		tree.setItemCount(2);
		
		TreeColumn trclmnBooks = new TreeColumn(tree, SWT.NONE);
		trclmnBooks.setWidth(100);
		trclmnBooks.setText("Books");
		
		TreeColumn trclmnTestaments = new TreeColumn(tree, SWT.NONE);
		trclmnTestaments.setWidth(100);
		trclmnTestaments.setText("Testaments");
	}

	
	
	
	
}