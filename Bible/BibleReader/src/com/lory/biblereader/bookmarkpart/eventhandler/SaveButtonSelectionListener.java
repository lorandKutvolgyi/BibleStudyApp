package com.lory.biblereader.bookmarkpart.eventhandler;

import java.util.List;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Text;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.bookmarkpart.BookMark;
import com.lory.biblereader.bookmarkpart.BookMarkCategory;
import com.lory.biblereader.bookmarkpart.BookMarkCategoryFactory;
import com.lory.biblereader.bookmarkpart.BookMarkManager;
import com.lory.biblereader.bookmarkpart.BookMarkSelectionPopup;
import com.lory.biblereader.bookmarkpart.BookMarkUtil;
import com.lory.biblereader.bookspart.Bible;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.textpart.Chapter;
import com.lory.biblereader.textpart.repository.TextRepository;

public class SaveButtonSelectionListener extends SelectionAdapter {

	private BookMarkSelectionPopup popup;
	private BookMarkManager bookMarkManager;
	private MessageService messageService;
	private Text verses;
	private Combo categories;
	private Bible bible;
	private TranslationManager translationManager;
	private TextRepository textRepository;

	public SaveButtonSelectionListener(BookMarkSelectionPopup popup, BookMarkManager bookMarkManager,
			MessageService messageService, Bible bible, TranslationManager translationManager,
			TextRepository textRepository) {
		this.popup = popup;
		this.bookMarkManager = bookMarkManager;
		this.messageService = messageService;
		this.verses = popup.getVerses();
		this.categories = popup.getCategories();
		this.bible = bible;
		this.translationManager = translationManager;
		this.textRepository = textRepository;
	}

	@Override
	public void widgetSelected(SelectionEvent e) {
		popup.getSave().setEnabled(false);
		popup.getCancel().setEnabled(false);
		int bookIndex = popup.getBooks().getSelectionIndex();
		int chapterIndex = popup.getChapters().getSelectionIndex() + 1;
		Chapter chapter = bible.getBooks().get(bookIndex).getChapter(chapterIndex, null, translationManager,
				textRepository);
		List<Integer> versesAsIntegers = BookMarkUtil.getVersesAsIntegers(isVersesEmpty() ? "" : verses.getText());
		BookMarkCategory category = isCategoriesEmpty() ? bookMarkManager.getDefaultCategory()
				: BookMarkCategoryFactory.getBookMarkCategory(categories.getText());
		BookMark bookMark = new BookMark(chapter.getId(), chapter.getBook().getTitle(), versesAsIntegers, category,
				messageService);
		category.add(bookMark);
		bookMarkManager.storeBookMark(bookMark);
		popup.close();
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
