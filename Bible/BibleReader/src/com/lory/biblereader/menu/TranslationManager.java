package com.lory.biblereader.menu;

import java.util.Observable;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.google.common.collect.Multimap;
import com.lory.biblereader.model.dao.BibleDao;

@Creatable
@Singleton
public class TranslationManager extends Observable {

	@Inject
	private BibleDao bibleDao;

	private String activeTranslation;

	public Multimap<String, String> getAvailableTranslations() {
		return bibleDao.getAvailableTranslations();
	}

	public void setActiveTranslationAbbreviation(String abbrev) {
		activeTranslation = abbrev + ":" + bibleDao.getDescription(abbrev);
		setChanged();
		notifyObservers();
	}

	public String getActiveTranslationAbbreviation() {
		if (activeTranslation == null) {
			return "";
		}
		return activeTranslation.split(":")[0];
	}

	public String getActiveTranslationDescription() {
		if (activeTranslation == null) {
			return "";
		}
		return activeTranslation.split(":")[1];
	}

	public boolean isSelectedTranslation(String translation) {
		return translation.equals(getActiveTranslationAbbreviation());
	}

	public String getTranslationDescription(String translationAbbreviation) {
		String currentTranslation = getAvailableTranslations().values().stream()
				.filter(translation -> translation.split(":")[0].equals(translationAbbreviation)).findAny().orElse(":");
		return currentTranslation.split(":")[1];
	}
}
