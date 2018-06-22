package com.lory.biblereader.parts.upperrightstack.bookmarkpart.eventhandler;

import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.Bible;
import com.lory.biblereader.parts.leftstack.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkManager;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkSelectionPopup;

public class BookMarkSelectionListener implements SelectionListener {

	private MessageService messageService;
	private BookMarkManager bookMarkManager;
	private BooksComparator booksComparator;
	private Bible bible;
	private TranslationManager translationManager;

	public BookMarkSelectionListener(MessageService messageService, BookMarkManager bookMarkManager,
			BooksComparator booksComparator, Bible bible, TranslationManager translationManager) {
		this.messageService = messageService;
		this.bookMarkManager = bookMarkManager;
		this.booksComparator = booksComparator;
		this.bible = bible;
		this.translationManager = translationManager;
	}

	@Override
	public void widgetSelected(SelectionEvent e) {
		BookMarkSelectionPopup bookMarkSelectionPopup = new BookMarkSelectionPopup(messageService, bookMarkManager,
				booksComparator, bible, translationManager);
		bookMarkSelectionPopup.open();
	}

	@Override
	public void widgetDefaultSelected(SelectionEvent e) {
	}
}
