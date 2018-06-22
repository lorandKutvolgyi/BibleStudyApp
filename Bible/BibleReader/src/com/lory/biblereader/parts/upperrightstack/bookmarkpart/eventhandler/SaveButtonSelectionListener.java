package com.lory.biblereader.parts.upperrightstack.bookmarkpart.eventhandler;

import java.util.List;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Text;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.Bible;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMark;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkCategory;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkManager;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkSelectionPopup;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkUtil;

public class SaveButtonSelectionListener implements SelectionListener {

	private BookMarkSelectionPopup popup;
	private BookMarkManager bookMarkManager;
	private MessageService messageService;
	private Text verses;
	private Combo categories;
	private Bible bible;
	private TranslationManager translationManager;

	public SaveButtonSelectionListener(BookMarkSelectionPopup popup, BookMarkManager bookMarkManager,
			MessageService messageService, Bible bible, TranslationManager translationManager) {
		this.popup = popup;
		this.bookMarkManager = bookMarkManager;
		this.messageService = messageService;
		this.verses = popup.getVerses();
		this.categories = popup.getCategories();
		this.bible = bible;
		this.translationManager = translationManager;
	}

	@Override
	public void widgetSelected(SelectionEvent e) {
		popup.getSave().setEnabled(false);
		popup.getCancel().setEnabled(false);
		int bookIndex = popup.getBooks().getSelectionIndex();
		int chapterIndex = popup.getChapters().getSelectionIndex() + 1;
		Chapter chapter = bible.getBooks().get(bookIndex).getChapter(chapterIndex, null, translationManager);
		List<Integer> versesAsIntegers = BookMarkUtil.getVersesAsIntegers(isVersesEmpty() ? "" : verses.getText());
		BookMarkCategory category = isCategoriesEmpty() ? bookMarkManager.getDefaultCategory()
				: new BookMarkCategory(categories.getText(), bookMarkManager);
		bookMarkManager.storeBookMark(new BookMark(chapter, versesAsIntegers, category, messageService));
		popup.close();
	}

	@Override
	public void widgetDefaultSelected(SelectionEvent e) {
	}

	private boolean isVersesEmpty() {
		boolean empty = verses.getText().isEmpty();
		boolean placeholder = verses.getText().equals(popup.getPlaceholderForVerses())
				&& verses.getForeground().equals(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
		return empty || placeholder;
	}

	private boolean isCategoriesEmpty() {
		boolean empty = categories.getText().isEmpty();
		boolean placeholder = categories.getText().equals(popup.getPlaceholderForCategories())
				&& categories.getForeground().equals(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
		return empty || placeholder;
	}
}
