package com.lory.biblereader.model;

import java.util.Observable;
import java.util.Observer;

import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

@Creatable
@Singleton
public class CurrentChapter extends Observable {

	private Chapter chapter;

	public Chapter getChapter() {
		return chapter;
	}

	public void setChapter(Chapter chapter) {
		this.chapter = chapter;
		setChanged();
		notifyObservers();
	}

	public void setChapter(String bookTitle, int chapterId) {
		Book book = Bible.getBookByTitle(bookTitle);
		setChapter(book.getChapter(chapterId));
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
