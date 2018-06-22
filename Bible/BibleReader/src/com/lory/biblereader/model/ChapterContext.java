package com.lory.biblereader.model;

public class ChapterContext {
	private final String id;
	private final String bookTitle;
	private final String translation;

	public ChapterContext(String id, String bookTitle, String translation) {
		this.id = id;
		this.bookTitle = bookTitle;
		this.translation = translation;
	}

	public String getId() {
		return id;
	}

	public String getBookTitle() {
		return bookTitle;
	}

	public String getTranslation() {
		return translation;
	}

}
