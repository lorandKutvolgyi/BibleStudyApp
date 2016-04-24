package com.lory.biblereader.perspective.model;

import java.util.Observable;
import java.util.Observer;

/**
 * Represents the current chapter which is selected in the tree of BooksPart and
 * of content is shown in the TextPart.
 *
 * @author lorandKutvolgyi
 *
 */
public class CurrentChapter extends Observable {
    private static CurrentChapter instance = new CurrentChapter();
    private Chapter chapter;

    private CurrentChapter() {}

    /**
     * Factory for current chapter.
     *
     * @return the current chapter instance
     */
    public static Chapter getInstance() {
        return instance.chapter;
    }

    public static void setCurrentChapter(Chapter chapter) {
        instance.chapter = chapter;
        instance.setChanged();
        instance.notifyObservers();
    }

    public static void setObserver(Observer observer) {
        instance.addObserver(observer);
    }

    @Override
    public String toString() {
        return "CurrentChapter\n\tchapter: "
                + (chapter != null ? chapter.getBook().getTitle() + " " + chapter.getId() : "");
    }
}
