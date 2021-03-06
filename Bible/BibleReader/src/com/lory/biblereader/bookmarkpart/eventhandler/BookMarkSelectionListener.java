package com.lory.biblereader.bookmarkpart.eventhandler;

import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.bookmarkpart.BookMarkManager;
import com.lory.biblereader.bookmarkpart.BookMarkSelectionPopup;
import com.lory.biblereader.bookspart.Bible;
import com.lory.biblereader.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.textpart.repository.TextRepository;

public class BookMarkSelectionListener implements SelectionListener {

	private MessageService messageService;
	private BookMarkManager bookMarkManager;
	private BooksComparator booksComparator;
	private Bible bible;
	private TranslationManager translationManager;
	private TextRepository textRepository;

	public BookMarkSelectionListener(MessageService messageService, BookMarkManager bookMarkManager,
			BooksComparator booksComparator, Bible bible, TranslationManager translationManager,
			TextRepository textRepository) {
		this.messageService = messageService;
		this.bookMarkManager = bookMarkManager;
		this.booksComparator = booksComparator;
		this.bible = bible;
		this.translationManager = translationManager;
		this.textRepository = textRepository;
	}

	@Override
	public void widgetSelected(SelectionEvent e) {
		BookMarkSelectionPopup bookMarkSelectionPopup = new BookMarkSelectionPopup(messageService, bookMarkManager,
				booksComparator, bible, translationManager, textRepository);
		bookMarkSelectionPopup.open();
	}

	@Override
	public void widgetDefaultSelected(SelectionEvent e) {
	}
}
