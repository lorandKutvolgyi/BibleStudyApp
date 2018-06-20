package com.lory.biblereader.menu;

import java.util.List;

import org.eclipse.e4.ui.di.AboutToShow;
import org.eclipse.e4.ui.model.application.ui.menu.ItemType;
import org.eclipse.e4.ui.model.application.ui.menu.MDirectMenuItem;
import org.eclipse.e4.ui.model.application.ui.menu.MMenu;
import org.eclipse.e4.ui.model.application.ui.menu.MMenuElement;
import org.eclipse.e4.ui.model.application.ui.menu.MMenuFactory;

import com.google.common.collect.Multimap;
import com.lory.biblereader.model.TranslationManager;

public class Translation {

	@AboutToShow
	public void aboutToShow(List<MMenuElement> items) {
		Multimap<String, String> availableTranslations = TranslationManager.getAvailableTranslations();
		availableTranslations.asMap().keySet().stream().forEach(lang -> {
			MMenu menu = createMenu(lang);
			fillMenuWithSubMenuItems(availableTranslations, lang, menu);
			items.add(menu);
		});
	}

	private MMenu createMenu(String lang) {
		MMenu menu = MMenuFactory.INSTANCE.createMenu();
		menu.setLabel(lang);
		return menu;
	}

	private void fillMenuWithSubMenuItems(Multimap<String, String> availableTranslations, String lang, MMenu menu) {
		availableTranslations.get(lang).stream().sorted().forEach(translation -> {
			menu.getChildren().add(createSubMenuItems(translation));
		});
	}

	private MDirectMenuItem createSubMenuItems(String translation) {
		MDirectMenuItem item = MMenuFactory.INSTANCE.createDirectMenuItem();
		item.setContributionURI("bundleclass://reader/com.lory.biblereader.menu.TranslationSelectionHandler");
		item.setLabel(translation.split(":")[0]);
		item.setTooltip(translation.split(":")[1]);
		item.setType(ItemType.RADIO);
		return item;
	}

}
