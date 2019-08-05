package com.lory.biblereader.textpart.contextmenu;

public class VerseContext {

	private String translation;
	private String bookTitle;
	private int chapterId;
	private int verseId;

	public VerseContext(String translation, String bookTitle, int chapterId, int verseId) {
		this.translation = translation;
		this.bookTitle = bookTitle;
		this.chapterId = chapterId;
		this.verseId = verseId;
	}

	public String getTranslation() {
		return translation;
	}

	public String getBookTitle() {
		return bookTitle;
	}

	public int getChapterId() {
		return chapterId;
	}

	public int getVerseId() {
		return verseId;
	}
}
