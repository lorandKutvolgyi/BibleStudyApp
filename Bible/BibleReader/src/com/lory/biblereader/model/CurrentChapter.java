package com.lory.biblereader.model;

import java.util.Observable;
import java.util.Observer;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.menu.TranslationManager;

@Creatable
@Singleton
public class CurrentChapter extends Observable {

	@Inject
	private Bible bible;
	@Inject
	private TranslationManager translationManager;

	private Chapter chapter;

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
		setChapter(book.getChapter(chapterId, translation, translationManager));
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
