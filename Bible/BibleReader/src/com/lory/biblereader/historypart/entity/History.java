package com.lory.biblereader.historypart.entity;

import java.util.LinkedList;
import java.util.Observable;

import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.model.Chapter;

@Creatable
@Singleton
public class History extends Observable {

	private LinkedList<Chapter> history = new LinkedList<>();

	public void addChapter(Chapter chapter) {
		history.add(chapter);
		setChanged();
		notifyObservers();
	}

	public void clear() {
		history.clear();
		setChanged();
		notifyObservers();
	}

	public void removeElement(int index) {
		history.remove(index);
		setChanged();
		notifyObservers();
	}

	public LinkedList<Chapter> getHistory() {
		return new LinkedList<>(history);
	}

}
