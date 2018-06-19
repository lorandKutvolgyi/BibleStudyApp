package com.lory.biblereader.menu;

import java.util.List;

import javax.inject.Inject;

import org.eclipse.e4.ui.di.AboutToShow;
import org.eclipse.e4.ui.model.application.ui.menu.MDirectMenuItem;
import org.eclipse.e4.ui.model.application.ui.menu.MMenu;
import org.eclipse.e4.ui.model.application.ui.menu.MMenuElement;
import org.eclipse.e4.ui.model.application.ui.menu.MMenuFactory;

import com.google.common.collect.Multimap;
import com.lory.biblereader.model.TranslationManager;

public class Translation {

	@Inject
	private TranslationManager translationManager;

	@AboutToShow
	public void aboutToShow(List<MMenuElement> items) {
		Multimap<String, String> availableTranslations = translationManager.getAvailableTranslations();
		availableTranslations.asMap().keySet().stream().forEach(lang -> {
			MMenu menu = MMenuFactory.INSTANCE.createMenu();
			menu.setLabel(lang);
			availableTranslations.get(lang).stream().forEach(translation -> {
				MDirectMenuItem dynamicItem = MMenuFactory.INSTANCE.createDirectMenuItem();
				dynamicItem.setLabel(translation.split(":")[0]);
				dynamicItem.setTooltip(translation.split(":")[1]);
				menu.getChildren().add(dynamicItem);
			});
			items.add(menu);
		});
//		dynamicItem.setContributorURI("platform:/plugin/at.descher.test");
//		dynamicItem.setContributionURI("bundleclass://at.descher.test/at.descher.test.DirectMenuItem");
	}

}
