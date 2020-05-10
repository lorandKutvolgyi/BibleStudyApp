package com.lory.biblereader.bookspart;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.textpart.Chapter;
import com.lory.biblereader.textpart.repository.TextRepository;

@Creatable
@Singleton
public class Bible {

	private TranslationManager translationManager;
	private TextRepository textRepository;
	private List<Book> books = new ArrayList<>();

	@Inject
	public Bible(TranslationManager translationManager, TextRepository textRepository) {
		this.translationManager = translationManager;
		this.textRepository = textRepository;
		books.addAll(Arrays.asList(OldTestamentBooks.values()));
		books.addAll(Arrays.asList(NewTestamentBooks.values()));
	}

	public Book getBookByTitle(String title) {
		return books.stream().filter(book -> title.equals(book.getTitle())).findFirst().get();
	}

	public Chapter getChapter(String title, int chapterNumber) {
		Book book = getBookByTitle(title);
		return book.getChapter(chapterNumber, null, translationManager, textRepository);
	}

	public List<Book> getBooks() {
		return new ArrayList<>(books);
	}
}
