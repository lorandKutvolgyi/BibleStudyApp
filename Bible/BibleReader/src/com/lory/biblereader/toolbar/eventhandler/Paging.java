package com.lory.biblereader.toolbar.eventhandler;

import org.eclipse.swt.SWT;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.CurrentChapter;

public class Paging {
	public static void paging(int keyCode) {
		if (!isSelectedChapter()) {
			return;
		}
		int id = CurrentChapter.getCurrentChapter().getId();
		changeCurrentChapter(getNewId(keyCode, id));
	}

	public static boolean isSelectedChapter() {
		return CurrentChapter.getCurrentChapter() != null;
	}

	public static int getNewId(int keyCode, int id) {
		int newId = id;
		if (keyCode == SWT.ARROW_RIGHT) {
			newId++;
		} else if (keyCode == SWT.ARROW_LEFT) {
			newId--;
		}
		return newId;
	}

	public static void changeCurrentChapter(int newId) {
		Chapter currentChapter = CurrentChapter.getCurrentChapter();
		Book book = currentChapter.getBook();
		if (newId > 0 && newId <= isMax(book)) {
			CurrentChapter.setCurrentChapter(book.getChapter(newId));
		}
	}

	public static int isMax(Book book) {
		int max = book.getChapters().size();
		return max;
	}
}
