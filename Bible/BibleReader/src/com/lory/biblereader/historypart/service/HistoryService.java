package com.lory.biblereader.historypart.service;

import java.util.LinkedList;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.model.Chapter;
import com.lory.biblereader.base.translation.model.CurrentChapter;
import com.lory.biblereader.historypart.entity.History;

@Creatable
@Singleton
public class HistoryService {

	private History history;
	private CurrentChapter currentChapter;

	@Inject
	public HistoryService(History history, CurrentChapter currentChapter) {
		this.history = history;
		this.currentChapter = currentChapter;
	}

	public void remove(int index) {
		history.removeElement(index);
	}

	public void add(Chapter chapter) {
		history.addChapter(chapter);
	}

	public LinkedList<Chapter> getHistory() {
		return history.getHistory();
	}

	public void setCurrentChapter(Chapter chapter) {
		currentChapter.setChapter(chapter);
	}
}
