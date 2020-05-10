package com.lory.biblereader.base.translation.model;

import java.util.Observable;
import java.util.Observer;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.bookspart.Bible;
import com.lory.biblereader.bookspart.Book;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.textpart.Chapter;
import com.lory.biblereader.textpart.repository.TextRepository;

@Creatable
@Singleton
public class CurrentChapter extends Observable {

	private Bible bible;
	private TranslationManager translationManager;
	private TextRepository textRepository;

	private Chapter chapter;

	@Inject
	public CurrentChapter(Bible bible, TranslationManager translationManager, TextRepository textRepository) {
		this.bible = bible;
		this.translationManager = translationManager;
		this.textRepository = textRepository;
	}

	public Chapter getChapter() {
		return chapter;
	}

	public void setChapter(Chapter chapter) {
		this.chapter = chapter;
		setChanged();
		notifyObservers();
	}

	public void setChapter(String bookTitle, int chapterId, String translation) {
		Book book = bible.getBookByTitle(bookTitle);
		setChapter(book.getChapter(chapterId, translation, translationManager, textRepository));
	}

	public void setObserver(Observer observer) {
		addObserver(observer);
	}

	public void removeObserver(Observer observer) {
		deleteObserver(observer);
	}

	@Override
	public String toString() {
		return "CurrentChapter\n\tchapter: "
				+ (chapter != null ? chapter.getBook().getTitle() + " " + chapter.getId() : "");
	}

}
