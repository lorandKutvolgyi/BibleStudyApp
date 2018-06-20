
package com.lory.biblereader.menu;

import org.eclipse.e4.core.di.annotations.CanExecute;
import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.e4.core.di.annotations.Optional;
import org.eclipse.e4.ui.model.application.ui.menu.MMenuItem;

import com.lory.biblereader.model.TranslationManager;

public class TranslationSelectionHandler {

	private String selectedTranslation;

	@Execute
	public void execute() {
		TranslationManager.setActiveTranslationAbbreviation(selectedTranslation);
	}

	@CanExecute
	public boolean canExecute(@Optional MMenuItem menuItem) {
		if (menuItem.isSelected()) {
			selectedTranslation = menuItem.getLabel();
		}
		return true;
	}

}