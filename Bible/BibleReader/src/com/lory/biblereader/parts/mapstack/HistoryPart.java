
package com.lory.biblereader.parts.mapstack;

import java.util.Arrays;
import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.RowLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.ui.forms.widgets.Hyperlink;

public class HistoryPart implements Observer {
	@Inject
	private History history;

	private StyledText mainArea;

	@PostConstruct
	public void postConstruct(Composite parent) {
		parent.setLayout(new FillLayout());
		mainArea = new StyledText(parent, SWT.MULTI | SWT.WRAP | SWT.V_SCROLL);
		mainArea.setLayout(new RowLayout());
		history.addObserver(this);
	}

	@Override
	public void update(Observable o, Object arg) {
		Arrays.asList(mainArea.getChildren()).stream().forEach(control -> control.dispose());
		history.getHistory().stream().forEach(chapter -> {
			Hyperlink link = new Hyperlink(mainArea, SWT.NONE);
			link.setBackground(mainArea.getBackground());
			link.setText(chapter.getBook().getTitle() + "-" + chapter.getId());
			Label label = new Label(mainArea, SWT.NONE);
			label.setText(" -> ");
		});
		mainArea.getChildren()[mainArea.getChildren().length - 1].dispose();
		mainArea.layout();
	}

}