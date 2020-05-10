package com.lory.biblereader.bookspart;

import com.lory.biblereader.base.translation.model.TreeElement;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.textpart.Chapter;
import com.lory.biblereader.textpart.repository.TextRepository;

public interface Book extends TreeElement {

	String getTitle();

	Testament getTestament();

	int getBookSize(TranslationManager translationManager, TextRepository textRepository);

	Chapter getChapter(int id, String translation, TranslationManager translationManager,
			TextRepository textRepository);
}
