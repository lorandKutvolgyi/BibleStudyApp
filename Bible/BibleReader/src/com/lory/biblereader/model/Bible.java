package com.lory.biblereader.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Bible {

	private static List<Book> books = new ArrayList<>();

	static {
		books.addAll(Arrays.asList(OldTestamentBooks.values()));
		books.addAll(Arrays.asList(NewTestamentBooks.values()));
	}

	public static Book getBookByTitle(String title) {
		return books.stream().filter(book -> title.equals(book.getTitle())).findFirst().get();
	}

	public static Chapter getChapter(String title, int chapterNumber) {
		Book book = getBookByTitle(title);
		return book.getChapter(chapterNumber);
	}

	public static List<Book> getBooks() {
		return new ArrayList<>(books);
	}
}
