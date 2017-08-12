package com.lory.biblereader.toolbar.eventhandler;

import org.eclipse.swt.SWT;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.parts.bookspart.treesorter.AbstractBooksOrder;
import com.lory.biblereader.parts.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.parts.mapstack.historypart.History;

public class BookChanging {

	public static void change(int keyCode, BooksComparator booksComparator, History history) {
		if (!isSelectedChapter()) {
			return;
		}
		AbstractBooksOrder comparator = booksComparator.current();
		Book book = CurrentChapter.getCurrentChapter().getBook();
		int index = comparator.getBooks().indexOf(book);
		Chapter chapter = getBook(comparator, index, keyCode).getChapter(1);
		CurrentChapter.setCurrentChapter(chapter);
		history.addChapter(chapter);
	}

	private static Book getBook(AbstractBooksOrder comparator, int index, int keyCode) {
		int newIndex;
		if (keyCode == SWT.ARROW_LEFT) {
			newIndex = index == 0 ? comparator.getBooks().size() - 1 : index - 1;
		} else {
			assert keyCode == SWT.ARROW_RIGHT;
			newIndex = index == comparator.getBooks().size() - 1 ? 0 : index + 1;
		}
		return comparator.getBooks().get(newIndex);
	}

	private static boolean isSelectedChapter() {
		return CurrentChapter.getCurrentChapter() != null;
	}
}
