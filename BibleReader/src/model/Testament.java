package model;

import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;

import database.ChapterDao;
import database.ChapterDaoFactory;

/**
 * Represents the Testaments of the Bible.
 *
 * @author lorandKutvolgyi
 *
 */
public enum Testament implements TreeElement {
    OLD_TESTAMENT("OldTestament") {
        private final Set<? extends Book> books = EnumSet.allOf(OldTestamentBooks.class);

        @Override
        public Set<? extends Book> getBooks() {
            return books;
        }

    },
    NEW_TESTAMENT("NewTestament") {
        private final Set<? extends Book> books = EnumSet.allOf(NewTestamentBooks.class);

        @Override
        public Set<? extends Book> getBooks() {
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

    @Override
    public String getContent() {
        return name;
    }

    @Override
    public Collection<? extends TreeElement> getChildren() {
        return getBooks();
    }

    @Override
    public TreeElement getParent() {
        return null;
    }

    public Book getBook(String name) {
        for (Book book : getBooks()) {
            if (name != null && name.equals(book.getTitle())) {
                return book;
            }
        }
        return null;
    }

    public static Testament getTestament(String name) {
        for (Testament testament : Testament.values()) {
            String testamentName = testament.getName();
            if (testamentName.equals(name)) {
                return testament;
            }
        }
        return null;
    }

    public abstract Set<? extends Book> getBooks();

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

        private static ChapterDao dao = ChapterDaoFactory.CHAPTER_SQL_DAO.getInstance();
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
        public String getContent() {
            return getTitle();
        }

        @Override
        public TreeElement getParent() {
            return getTestament();
        }

    }

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

        private static ChapterDao dao = ChapterDaoFactory.CHAPTER_SQL_DAO.getInstance();
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
        public String getContent() {
            return getTitle();
        }

        @Override
        public TreeElement getParent() {
            return getTestament();
        }
    }
}
