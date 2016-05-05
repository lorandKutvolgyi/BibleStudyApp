package com.lory.biblereader.model;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

import com.lory.biblereader.model.dao.ChapterDao;
import com.lory.biblereader.model.dao.ChapterDaoFactory;

/**
 * Represents the all books of the New Testament.
 *
 * @author lorandKutvolgyi
 *
 */
public enum NewTestamentBooks implements Book {
    MATTHEW("MATTHEW"),
    MARK("MARK"),
    LUKE("LUKE"),
    JOHN("JOHN"),
    ACTS("ACTS"),
    ROMANS("ROMANS"),
    I_CORINTHIANS("I_CORINTHIANS"),
    II_CORINTHIANS("II_CORINTHIANS"),
    GALATIANS("GALATIANS"),
    EPHESIANS("EPHESIANS"),
    PHILIPPIANS("PHILIPPIANS"),
    COLOSSIANS("COLOSSIANS"),
    I_THESSALONIANS("I_THESSALONIANS"),
    II_THESSALONIANS("II_THESSALONIANS"),
    I_TIMOTHY("I_TIMOTHY"),
    II_TIMOTHY("II_TIMOTHY"),
    TITUS("TITUS"),
    PHILEMON("PHILEMON"),
    HEBREWS("HEBREWS"),
    JAMES("JAMES"),
    I_PETER("I_PETER"),
    II_PETER("II_PETER"),
    I_JOHN("I_JOHN"),
    II_JOHN("II_JOHN"),
    III_JOHN("III_JOHN"),
    JUDE("JUDE"),
    REVELATION("REVELATION");

    private static ChapterDao dao = ChapterDaoFactory.getInstance();
    private final String title;

    private NewTestamentBooks(String title) {
        this.title = title;
    }

    @Override
    public String getTitle() {
        return title;
    }

    @Override
    public Testament getTestament() {
        return Testament.NEW_TESTAMENT;
    }

    @Override
    public List<Chapter> getChapters() {
        return dao.findAllChapters(this);
    }

    @Override
    public Chapter getChapter(int id) {
        return dao.findChapterById(this, id);
    }

    @Override
    public Collection<? extends TreeElement> getChildren() {
        return Collections.emptyList();
    }

    @Override
    public String getText() {
        return getTitle();
    }

    @Override
    public TreeElement getParent() {
        return getTestament();
    }
}