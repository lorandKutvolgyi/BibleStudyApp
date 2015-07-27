package model;

public enum BooksOfOldTestament {
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

    private String title;

    private BooksOfOldTestament(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

}
