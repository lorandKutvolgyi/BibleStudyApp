package com.lory.biblereader.model;

import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.dao.BibleDao;

public interface Book extends TreeElement {

	String getTitle();

	Testament getTestament();

	int getBookSize(TranslationManager translationManager, BibleDao dao);

	Chapter getChapter(int id, String translation, TranslationManager translationManager, BibleDao dao);

}
