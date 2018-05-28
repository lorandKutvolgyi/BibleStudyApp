package com.lory.biblereader.model;

import java.util.List;

public interface Book extends TreeElement {

	public String getTitle();

	public Testament getTestament();

	public List<Chapter> getChapters();

	public Chapter getChapter(int id);

}
