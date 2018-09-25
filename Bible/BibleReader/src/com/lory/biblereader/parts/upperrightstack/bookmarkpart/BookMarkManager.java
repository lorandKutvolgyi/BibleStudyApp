package com.lory.biblereader.parts.upperrightstack.bookmarkpart;

import java.util.Observable;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.dao.BibleDao;

@Creatable
@Singleton
public class BookMarkManager extends Observable {

	@Inject
	private MessageService messageService;
	@Inject
	private BibleDao bibleDao;

	private BookMarkCategory DEFAULT_CATEGORY;

	@PostConstruct
	private void postConstruct() {
		DEFAULT_CATEGORY = BookMarkCategoryFactory.getBookMarkCategory(messageService.getMessage("withoutLabel"));
	}

	public void storeBookMark(BookMark bookMark) {
		if (!hasBookMark(bookMark)) {
			saveBookMark(bookMark);
			setChanged();
			notifyObservers();
		}
	}

	private boolean hasBookMark(BookMark bookMark) {
		return bibleDao.hasBookMark(bookMark);
	}

	private void saveBookMark(BookMark bookMark) {
		bibleDao.saveBookMark(bookMark);
	}

	private BookMarkCategory getCategory(BookMark bookMark) {
		return bookMark.getParent() != null
				? BookMarkCategoryFactory.getBookMarkCategory(bookMark.getParent().getText())
				: DEFAULT_CATEGORY;
	}

	public BookMarkCategory getDefaultCategory() {
		return DEFAULT_CATEGORY;
	}

	private boolean isCategoryExist(BookMarkCategory category) {
		return false;
	}

}
