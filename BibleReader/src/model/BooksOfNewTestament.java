package model;

public enum BooksOfNewTestament {
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

    BooksOfNewTestament(String title) {
        this.title = title;
    }

    public String gettitle() {
        return title;
    }
}
