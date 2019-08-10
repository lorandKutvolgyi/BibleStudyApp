package com.lory.biblereader.base.translation.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.menu.TranslationManager;
import com.lory.biblereader.base.translation.model.dao.BibleDao;

@Creatable
@Singleton
public class Bible {

	private TranslationManager translationManager;
	private BibleDao bibleDao;
	private List<Book> books = new ArrayList<>();

	@Inject
	public Bible(TranslationManager translationManager, BibleDao bibleDao) {
		this.translationManager = translationManager;
		this.bibleDao = bibleDao;
		books.addAll(Arrays.asList(OldTestamentBooks.values()));
		books.addAll(Arrays.asList(NewTestamentBooks.values()));
	}

	public Book getBookByTitle(String title) {
		return books.stream().filter(book -> title.equals(book.getTitle())).findFirst().get();
	}

	public Chapter getChapter(String title, int chapterNumber) {
		Book book = getBookByTitle(title);
		return book.getChapter(chapterNumber, null, translationManager, bibleDao);
	}

	public List<Book> getBooks() {
		return new ArrayList<>(books);
	}
}
