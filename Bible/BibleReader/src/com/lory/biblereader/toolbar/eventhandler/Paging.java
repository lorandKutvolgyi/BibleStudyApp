package com.lory.biblereader.toolbar.eventhandler;

import org.eclipse.swt.SWT;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.parts.upperrightstack.historypart.History;

public class Paging {

	public static void paging(int keyCode, History history) {
		if (!isSelectedChapter()) {
			return;
		}
		int id = CurrentChapter.getCurrentChapter().getId();
		Chapter chapter = changeCurrentChapter(getNewId(keyCode, id));
		if (chapter != null) {
			history.addChapter(chapter);
		}
	}

	private static boolean isSelectedChapter() {
		return CurrentChapter.getCurrentChapter() != null;
	}

	private static int getNewId(int keyCode, int id) {
		int newId = id;
		if (keyCode == SWT.ARROW_RIGHT) {
			newId++;
		} else if (keyCode == SWT.ARROW_LEFT) {
			newId--;
		}
		return newId;
	}

	private static Chapter changeCurrentChapter(int newId) {
		Chapter currentChapter = CurrentChapter.getCurrentChapter();
		Book book = currentChapter.getBook();
		if (newId > 0 && newId <= isMax(book)) {
			Chapter chapter = book.getChapter(newId);
			CurrentChapter.setCurrentChapter(chapter);
			return chapter;
		}
		return null;
	}

	private static int isMax(Book book) {
		int max = book.getChapters().size();
		return max;
	}
}
