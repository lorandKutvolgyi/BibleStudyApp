package model;

import java.util.Observable;
import java.util.Observer;

public class CurrentChapter extends Observable {
    private static CurrentChapter instance = new CurrentChapter();
    private Chapter chapter;

    private CurrentChapter() {}

    public static Chapter getInstance() {
        return instance.chapter;
    }

    public static void setCurrentChapter(Chapter chapter) {
        instance.chapter = chapter;
        instance.setChanged();
        instance.notifyObservers();
    }

    public static void initialize(Observer observer) {
        instance.addObserver(observer);
    }

}
