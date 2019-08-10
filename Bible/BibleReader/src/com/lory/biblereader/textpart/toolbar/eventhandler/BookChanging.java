package com.lory.biblereader.textpart.toolbar.eventhandler;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.SWT;

import com.lory.biblereader.base.translation.menu.TranslationManager;
import com.lory.biblereader.base.translation.model.Book;
import com.lory.biblereader.base.translation.model.Chapter;
import com.lory.biblereader.base.translation.model.CurrentChapter;
import com.lory.biblereader.base.translation.model.dao.BibleDao;
import com.lory.biblereader.bookspart.treesorter.AbstractBooksOrder;
import com.lory.biblereader.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.historypart.entity.History;

@Creatable
@Singleton
public class BookChanging {

	private CurrentChapter currentChapter;
	private TranslationManager translationManager;
	private BibleDao bibleDao;

	@Inject
	public BookChanging(CurrentChapter currentChapter, TranslationManager translationManager, BibleDao bibleDao) {
		this.currentChapter = currentChapter;
		this.translationManager = translationManager;
		this.bibleDao = bibleDao;
	}

	public void change(int keyCode, BooksComparator booksComparator, History history) {
		if (!isSelectedChapter()) {
			return;
		}
		AbstractBooksOrder order = booksComparator.current();
		Book book = currentChapter.getChapter().getBook();
		int index = order.getBooks().indexOf(book);
		String translation = currentChapter.getChapter().getTranslation();
		Chapter chapter = getBook(order, index, keyCode).getChapter(1, translation, translationManager, bibleDao);
		currentChapter.setChapter(chapter);
		history.addChapter(chapter);
	}

	private Book getBook(AbstractBooksOrder comparator, int index, int keyCode) {
		int newIndex;
		if (keyCode == SWT.ARROW_LEFT) {
			newIndex = index == 0 ? comparator.getBooks().size() - 1 : index - 1;
		} else {
			assert keyCode == SWT.ARROW_RIGHT;
			newIndex = index == comparator.getBooks().size() - 1 ? 0 : index + 1;
		}
		return comparator.getBooks().get(newIndex);
	}

	private boolean isSelectedChapter() {
		return currentChapter.getChapter() != null;
	}
}
