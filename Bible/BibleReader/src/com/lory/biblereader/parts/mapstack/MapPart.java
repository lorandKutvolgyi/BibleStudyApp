package com.lory.biblereader.parts.mapstack;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.swt.widgets.Composite;

public class MapPart {
	@Inject
	public MapPart() {
	}

	@PostConstruct
	public void postConstruct(MPart part, Composite parent) {
		// parent.setLayout(new FillLayout(SWT.HORIZONTAL));
		// Image image = new Image(Display.getCurrent(),
		// "/home/lory/Projects/BibleApp/Bible/BibleReader/resources/images/OLD_TESTAMENT/1.svg");
		// parent.setBackgroundImage(image);

	}

}