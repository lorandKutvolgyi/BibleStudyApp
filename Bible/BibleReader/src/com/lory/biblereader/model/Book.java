package com.lory.biblereader.model;

import com.lory.biblereader.menu.TranslationManager;

public interface Book extends TreeElement {

	String getTitle();

	Testament getTestament();

	int getBookSize(TranslationManager translationManager);

	Chapter getChapter(int id, String translation, TranslationManager translationManager);

}
