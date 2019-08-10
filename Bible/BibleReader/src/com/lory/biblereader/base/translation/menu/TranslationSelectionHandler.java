
package com.lory.biblereader.base.translation.menu;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.CanExecute;
import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.e4.ui.model.application.ui.menu.MMenuItem;

public class TranslationSelectionHandler {

	private TranslationManager translationManager;

	private String selectedTranslation;

	@Inject
	public TranslationSelectionHandler(TranslationManager translationManager) {
		this.translationManager = translationManager;
	}

	@Execute
	public void execute() {
		translationManager.setActiveTranslationAbbreviation(selectedTranslation);
	}

	@CanExecute
	public boolean canExecute(MMenuItem menuItem) {
		selectedTranslation = menuItem.getLabel();
		return true;
	}

}