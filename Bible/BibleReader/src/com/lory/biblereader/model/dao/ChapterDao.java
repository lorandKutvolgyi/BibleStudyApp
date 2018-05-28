package com.lory.biblereader.model.dao;

import java.util.List;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;

public interface ChapterDao {

	public Chapter findChapterById(Book book, int id);

	public List<Chapter> findAllChapters(Book book);
}
