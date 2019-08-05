package com.lory.biblereader.base.translation.model;

import com.lory.biblereader.base.translation.menu.TranslationManager;
import com.lory.biblereader.base.translation.model.dao.BibleDao;

public interface Book extends TreeElement {

	String getTitle();

	Testament getTestament();

	int getBookSize(TranslationManager translationManager, BibleDao dao);

	Chapter getChapter(int id, String translation, TranslationManager translationManager, BibleDao dao);

}
