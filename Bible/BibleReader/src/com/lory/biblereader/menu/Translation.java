package com.lory.biblereader.menu;

import java.util.Collections;
import java.util.List;
import java.util.Locale;

import javax.annotation.PreDestroy;
import javax.inject.Inject;

import org.eclipse.e4.ui.di.AboutToShow;
import org.eclipse.e4.ui.model.application.MApplication;
import org.eclipse.e4.ui.model.application.ui.menu.ItemType;
import org.eclipse.e4.ui.model.application.ui.menu.MDirectMenuItem;
import org.eclipse.e4.ui.model.application.ui.menu.MMenu;
import org.eclipse.e4.ui.model.application.ui.menu.MMenuElement;
import org.eclipse.e4.ui.model.application.ui.menu.MMenuFactory;
import org.eclipse.e4.ui.workbench.modeling.EModelService;
import org.eclipse.swt.widgets.Shell;

import com.google.common.collect.Multimap;

public class Translation {

	private TranslationManager translationManager;
	private EModelService modelService;

	private static boolean activeTranslationIsSet;

	@Inject
	public Translation(TranslationManager translationManager, EModelService modelService) {
		this.translationManager = translationManager;
		this.modelService = modelService;
	}

	@AboutToShow
	public void aboutToShow(Shell shell, List<MMenuElement> items, MApplication app) {
		Multimap<String, String> availableTranslations = translationManager.getAvailableTranslations();
		setActiveTranslation(app, availableTranslations);
		createMenu(items, app, availableTranslations);
	}

	@PreDestroy
	public void persist(MApplication app) {
		app.getPersistedState().put("activeTranslation", translationManager.getActiveTranslationAbbreviation());
	}

	private void setActiveTranslation(MApplication app, Multimap<String, String> availableTranslations) {
		if (!activeTranslationIsSet) {
			String activeTranslation = getActiveTranslation(app, availableTranslations);
			if (activeTranslation != null && !activeTranslation.isEmpty()) {
				translationManager.setActiveTranslationAbbreviation(activeTranslation);
				activeTranslationIsSet = true;
			}
		}
	}

	private void createMenu(List<MMenuElement> items, MApplication app, Multimap<String, String> translations) {
		translations.asMap().keySet().stream().sorted().forEach(lang -> {
			removePersistedMenuItems(app, lang);
			createNewMenuItems(items, translations, lang);
		});
	}

	private String getActiveTranslation(MApplication app, Multimap<String, String> availableTranslations) {
		String activeTranslation = app.getPersistedState().remove("activeTranslation");
		if (activeTranslation == null) {
			String defaultLang = Locale.getDefault().getLanguage().toUpperCase();
			activeTranslation = availableTranslations.get(defaultLang).stream().findFirst().orElse(null);
			if (activeTranslation != null) {
				activeTranslation = activeTranslation.split(":")[0];
			}
		}
		return activeTranslation;
	}

	private void removePersistedMenuItems(MApplication app, String lang) {
		List<MMenu> list = modelService.findElements(app, "biblereader.menu.translations", MMenu.class,
				Collections.emptyList(), EModelService.IN_MAIN_MENU);
		MMenu menu = (MMenu) list.get(0).getChildren().stream().filter(menuItem -> lang.equals(menuItem.getLabel()))
				.findAny().orElse(null);
		if (menu != null) {
			menu.setVisible(false);
			menu.setToBeRendered(false);
			list.get(0).getChildren().remove(menu);
		}
	}

	private void createNewMenuItems(List<MMenuElement> items, Multimap<String, String> translations, String lang) {
		MMenu menu = createNewMenu(lang);

		fillMenuWithSubMenuItems(translations, lang, menu);
		addMenuToMainMenu(items, menu);
	}

	private MMenu createNewMenu(String lang) {
		MMenu menu = MMenuFactory.INSTANCE.createMenu();
		menu.setLabel(lang);
		return menu;
	}

	private void fillMenuWithSubMenuItems(Multimap<String, String> availableTranslations, String lang, MMenu menu) {
		availableTranslations.get(lang).stream().sorted().forEach(translation -> {
			MDirectMenuItem item = MMenuFactory.INSTANCE.createDirectMenuItem();
			item.setContributorURI("platform:/plugin/reader");
			item.setContributionURI(
					"bundcom.lory.biblereader.base.translation.menu.TranslationSelec.biblereader.menutionHandler");
			item.setLabel(translation.split(":")[0]);
			item.setElementId(translation.split(":")[0]);
			item.setTooltip(translation.split(":")[1]);
			item.setSelected(translationManager.isSelectedTranslation(item.getLabel()));
			item.setType(ItemType.RADIO);
			if (item.isSelected()) {
				menu.getChildren().add(0, item);
			} else {
				menu.getChildren().add(item);
			}
		});
	}

	private void addMenuToMainMenu(List<MMenuElement> items, MMenu menu) {
		if (menu.getChildren().stream().anyMatch(item -> ((MDirectMenuItem) item).isSelected())) {
			items.add(0, MMenuFactory.INSTANCE.createMenuSeparator());
			items.add(0, menu);
		} else {
			items.add(menu);
		}
	}
}