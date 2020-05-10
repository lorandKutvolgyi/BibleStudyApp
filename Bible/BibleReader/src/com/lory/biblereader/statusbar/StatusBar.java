package com.lory.biblereader.statusbar;

import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;

import com.lory.biblereader.menu.TranslationManager;

public class StatusBar implements Observer {

	private TranslationManager translationManager;

	private Label label;

	@Inject
	public StatusBar(TranslationManager translationManager) {
		this.translationManager = translationManager;
	}

	@PostConstruct
	public void createGui(Composite parent) {
		Composite body = new Composite(parent, SWT.NONE);
		body.setLayout(new GridLayout());
		label = new Label(body, SWT.LEFT);
		label.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false));
		translationManager.addObserver(this);
		label.setText(translationManager.getActiveTranslationDescription());
		label.getParent().pack();
	}

	@Override
	public void update(Observable o, Object arg) {
		label.setText(translationManager.getActiveTranslationDescription());
		label.getParent().pack();
	}
}