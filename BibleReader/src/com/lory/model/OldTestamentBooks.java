package com.lory.model;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

import com.lory.database.ChapterDao;
import com.lory.database.ChapterDaoFactory;

/**
 * Represents the all books of the Old Testament.
 *
 * @author lorandKutvolgyi
 *
 */
public enum OldTestamentBooks implements Book {
    GENESIS("GENESIS"),
    EXODUS("EXODUS"),
    LEVITICUS("LEVITICUS"),
    NUMBERS("NUMBERS"),
    DEUTERONOMY("DEUTERONOMY"),
    JOSHUA("JOSHUA"),
    JUDGES("JUDGES"),
    RUTH("RUTH"),
    I_SAMUEL("I_SAMUEL"),
    II_SAMUEL("II_SAMUEL"),
    I_KINGS("I_KINGS"),
    II_KINGS("II_KINGS"),
    I_CHRONICLES("I_CHRONICLES"),
    II_CHRONICLES("II_CHRONICLES"),
    EZRA("EZRA"),
    NEHEMIAH("NEHEMIAH"),
    ESTHER("ESTHER"),
    JOB("JOB"),
    PSALMS("PSALMS"),
    PROVERBS("PROVERBS"),
    ECCLESIASTES("ECCLESIASTES"),
    SONG_OF_SOLOMON("SONG_OF_SOLOMON"),
    ISAIAH("ISAIAH"),
    JEREMIAH("JEREMIAH"),
    LAMENTATIONS("LAMENTATIONS"),
    EZEKIEL("EZEKIEL"),
    DANIEL("DANIEL"),
    HOSEA("HOSEA"),
    JOEL("JOEL"),
    AMOS("AMOS"),
    OBADIAH("OBADIAH"),
    JONAH("JONAH"),
    MICAH("MICAH"),
    NAHUM("NAHUM"),
    HABAKKUK("HABAKKUK"),
    ZEPHANIAH("ZEPHANIAH"),
    HAGGAI("HAGGAI"),
    ZECHARIAH("ZECHARIAH"),
    MALACHI("MALACHI");

    private static ChapterDao dao = ChapterDaoFactory.getInstance();
    private String title;

    private OldTestamentBooks(String title) {
        this.title = title;
    }

    @Override
    public String getTitle() {
        return title;
    }

    @Override
    public Testament getTestament() {
        return Testament.OLD_TESTAMENT;
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