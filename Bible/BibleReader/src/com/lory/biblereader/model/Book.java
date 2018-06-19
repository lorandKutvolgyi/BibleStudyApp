package com.lory.biblereader.model;

public interface Book extends TreeElement {

	String getTitle();

	Testament getTestament();

	int getBookSize();

	Chapter getChapter(int id);

}
