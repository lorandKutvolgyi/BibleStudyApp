package model;

import java.util.EnumSet;
import java.util.Set;

/**
 * Represents the Testaments of the Bible.
 * 
 * @author lorandKutvolgyi
 * 
 */
public enum Testament {
    OLD_TESTAMENT("OldTestament") {
        private final Set<? extends Books> books = EnumSet.allOf(OldTestamentBooks.class);

        @Override
        public Set<? extends Books> getBooks() {
            return books;
        }

    },
    NEW_TESTAMENT("NewTestament") {
        private final Set<? extends Books> books = EnumSet.allOf(NewTestamentBooks.class);

        @Override
        public Set<? extends Books> getBooks() {
            return books;
        }
    };
    private String name;

    private Testament(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public abstract Set<? extends Books> getBooks();

    private enum OldTestamentBooks implements Books {
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

    }

    private enum NewTestamentBooks implements Books {
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
        REVELATION_OF_JOHN("REVELATION_OF_JOHN");

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

    }
}
