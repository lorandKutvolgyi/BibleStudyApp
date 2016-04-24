package com.lory.biblereader.perspective.model;

import java.util.List;

/**
 * Represents a Book of the Bible.
 *
 * @author lorandKutvolgyi
 *
 */
public interface Book extends TreeElement {

    /**
     * Returns the title of Book in the used language.
     *
     * @return title of book
     */
    public String getTitle();

    /**
     * Returns the container Testament(New or Old)
     *
     * @return container Testament
     */
    public Testament getTestament();

    /**
     * Returns chapters contained in the book.
     *
     * @return chapters contained in the book
     */
    public List<Chapter> getChapters();

    /**
     * Returns chapter has the given id.
     *
     * @return chapter has the given id
     */
    public Chapter getChapter(int id);

}
