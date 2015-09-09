package model;

/**
 * Represents a chapter of a book in the Bible.
 * 
 * @author lorandKutvolgyi
 * 
 */
public class Chapter {
    private int id;
    private String text;

    public int getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setText(String text) {
        this.text = text;
    }
}
