package com.lory.database;

import java.util.List;

import com.lory.model.Book;
import com.lory.model.Chapter;

/**
 * Data access object for chapters of the Bible.
 *
 * @author lorandKutvolgyi
 *
 */
public interface ChapterDao {

    /**
     * Provides text of a chapter by the chapter id.
     *
     * @param book searches in this
     * @param id searches by this
     * @return the text of chapter
     */
    public Chapter findChapterById(Book book, int id);

    /**
     * Provides text of each chapter of a book.
     *
     * @param book searches in this
     * @return the list of chapters
     */
    public List<Chapter> findAllChapters(Book book);
}
