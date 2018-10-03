package com.lory.biblereader.parts.upperrightstack.bookmarkpart;

import java.util.Observable;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Shell;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.TreeElement;
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

	public void removeBookMark(TreeElement treeElement) {
		if (treeElement.getChildren().isEmpty()) {
			bibleDao.removeBookMark((BookMark) treeElement);
		} else {
			bibleDao.removeBookMarkCategory((BookMarkCategory) treeElement);
		}
		setChanged();
		notifyObservers();
	}

	public void removeAllBookMark(Shell shell) {
		// @formatter:off
		int result = MessageDialog.open(MessageDialog.CONFIRM,
				shell,
				messageService.getMessage("confirm"),
				messageService.getMessage("sureQuestionForBookMark"), 
				SWT.NONE, 
				messageService.getMessage("cancel"),
				messageService.getMessage("remove"));
		// @formatter:on
		if (result == 1) {
			bibleDao.removeAllBookMark();
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

	public BookMarkCategory getDefaultCategory() {
		return DEFAULT_CATEGORY;
	}
}
