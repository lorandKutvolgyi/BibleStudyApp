package com.lory.model;

/**
 * Represents a chapter of a book in the Bible.
 *
 * @author lorandKutvolgyi
 *
 */
public class Chapter {
    private final int id;
    private final String text;
    private final Book book;

    public Chapter(int id, String text, Book book) {
        this.id = id;
        this.text = text;
        this.book = book;
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
}
