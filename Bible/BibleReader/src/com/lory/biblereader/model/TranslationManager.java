package com.lory.biblereader.model;

import java.util.Locale;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.google.common.collect.Multimap;
import com.lory.biblereader.model.dao.ChapterSqlDao;

@Creatable
@Singleton
public class TranslationManager {

	@Inject
	private ChapterSqlDao dao;

	private String activeTranslation;

	public Multimap<String, String> getAvailableTranslations() {
		Multimap<String, String> availableTranslations = dao.getAvailableTranslations();
		if (activeTranslation == null) {
			String defaultLang = Locale.getDefault().getLanguage().toUpperCase();
			activeTranslation = availableTranslations.get(defaultLang).stream().findFirst().get();
		}
		return availableTranslations;
	}

	public void setActiveTranslationAbbreviation(String abbrev) {
		this.activeTranslation = activeTranslation + ":" + dao.getDescription(abbrev.toLowerCase());
	}

	public String getActiveTranslationAbbreviation() {
		return activeTranslation.split(":")[0];
	}

	public String getActiveTranslationDescription() {
		return activeTranslation.split(":")[1];
	}
}
