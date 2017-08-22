package com.lory.biblereader.model;

import java.io.Serializable;

/**
 * Represents a chapter of a book in the Bible.
 *
 * @author lorandKutvolgyi
 *
 */
public class Chapter implements Serializable {

	private static final long serialVersionUID = 1L;

	private final int id;
	private final String text;
	private final Book book;

	private Chapter(int id, String text, Book book) {
		this.id = id;
		this.text = text;
		this.book = book;
	}

	public static Chapter createNewChapter(int id, String text, Book book) {
		return new Chapter(id, text, book);
	}

	public static Chapter createCompareObject(int id, Book book) {
		return createNewChapter(id, null, book);
	}

	public int getId() {
		return id;
	}

	public String getText() {
		return text;
	}

	public Book getBook() {
		return book;
	}

	@Override
	public String toString() {
		return "Chapter\n\tid: " + id + "\n\ttext: " + text + "\n\tbook: " + book != null ? book.getTitle() : "";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((book == null) ? 0 : book.hashCode());
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Chapter other = (Chapter) obj;
		if (book == null) {
			if (other.book != null) {
				return false;
			}
		} else if (!book.equals(other.book)) {
			return false;
		}
		if (id != other.id) {
			return false;
		}
		return true;
	}

}
