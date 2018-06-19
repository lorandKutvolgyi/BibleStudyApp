package com.lory.biblereader.model;

import java.util.Locale;

import com.google.common.collect.Multimap;
import com.lory.biblereader.model.dao.BibleDaoFactory;

public class TranslationManager {

	private static String activeTranslation;

	public static Multimap<String, String> getAvailableTranslations() {
		Multimap<String, String> availableTranslations = BibleDaoFactory.getInstance().getAvailableTranslations();
		if (activeTranslation == null) {
			String defaultLang = Locale.getDefault().getLanguage().toUpperCase();
			activeTranslation = availableTranslations.get(defaultLang).stream().findFirst().get();
		}
		return availableTranslations;
	}

	public static void setActiveTranslationAbbreviation(String abbrev) {
		activeTranslation = activeTranslation + ":"
				+ BibleDaoFactory.getInstance().getDescription(abbrev.toLowerCase());
	}

	public static String getActiveTranslationAbbreviation() {
		return activeTranslation.split(":")[0];
	}

	public static String getActiveTranslationDescription() {
		return activeTranslation.split(":")[1];
	}
}
