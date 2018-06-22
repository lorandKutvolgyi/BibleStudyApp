package com.lory.biblereader.menu;

import java.util.List;

import javax.annotation.PreDestroy;
import javax.inject.Inject;

import org.eclipse.e4.ui.di.AboutToShow;
import org.eclipse.e4.ui.model.application.MApplication;
import org.eclipse.e4.ui.model.application.ui.menu.ItemType;
import org.eclipse.e4.ui.model.application.ui.menu.MDirectMenuItem;
import org.eclipse.e4.ui.model.application.ui.menu.MMenu;
import org.eclipse.e4.ui.model.application.ui.menu.MMenuElement;
import org.eclipse.e4.ui.model.application.ui.menu.MMenuFactory;
import org.eclipse.swt.widgets.Shell;

import com.google.common.collect.Multimap;

public class Translation {

	@Inject
	private TranslationManager translationManager;

	@AboutToShow
	public void aboutToShow(Shell shell, List<MMenuElement> items, MApplication app) {
		String activeTranslation = app.getPersistedState().remove("activeTranslation");
		Multimap<String, String> availableTranslations = translationManager.getAvailableTranslations();
		availableTranslations.asMap().keySet().stream().sorted().forEach(lang -> {
			MMenu menu = createMenu(lang);
			fillMenuWithSubMenuItems(availableTranslations, lang, menu);
			if (menu.getChildren().stream().anyMatch(item -> ((MDirectMenuItem) item).isSelected())) {
				items.add(0, MMenuFactory.INSTANCE.createMenuSeparator());
				items.add(0, menu);
			} else {
				items.add(menu);
			}
		});
		if (activeTranslation != null) {
			translationManager.setActiveTranslationAbbreviation(activeTranslation);
		}
	}

	@PreDestroy
	public void persist(MApplication app) {
		app.getPersistedState().put("activeTranslation", translationManager.getActiveTranslationAbbreviation());
	}

	private MMenu createMenu(String lang) {
		MMenu menu = MMenuFactory.INSTANCE.createMenu();
		menu.setLabel(lang);
		return menu;
	}

	private void fillMenuWithSubMenuItems(Multimap<String, String> availableTranslations, String lang, MMenu menu) {
		availableTranslations.get(lang).stream().sorted().forEach(translation -> {
			MDirectMenuItem item = createSubMenuItems(translation);
			if (item.isSelected()) {
				menu.getChildren().add(0, item);
			} else {
				menu.getChildren().add(item);
			}
		});
	}

	private MDirectMenuItem createSubMenuItems(String translation) {
		MDirectMenuItem item = MMenuFactory.INSTANCE.createDirectMenuItem();
		item.setContributorURI("platform:/plugin/reader");
		item.setContributionURI("bundleclass://reader/com.lory.biblereader.menu.TranslationSelectionHandler");
		item.setLabel(translation.split(":")[0]);
		item.setElementId(translation.split(":")[0]);
		item.setTooltip(translation.split(":")[1]);
		item.setSelected(translationManager.isSelectedTranslation(item.getLabel()));
		item.setType(ItemType.RADIO);
		return item;
	}

}
