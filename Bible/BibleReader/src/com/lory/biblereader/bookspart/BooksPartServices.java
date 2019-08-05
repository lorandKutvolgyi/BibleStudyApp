package com.lory.biblereader.bookspart;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.base.translation.model.CurrentChapter;
import com.lory.biblereader.bookspart.eventhandler.BookClickListener;
import com.lory.biblereader.bookspart.eventhandler.BookSelectionListener;
import com.lory.biblereader.bookspart.eventhandler.BooksKeyListener;

@Creatable
@Singleton
public class BooksPartServices {

	@Inject
	private BookSelectionListener selectionListener;
	@Inject
	private BookClickListener bookClickListener;
	@Inject
	private BooksKeyListener booksKeyListener;
	@Inject
	private MessageService messageService;
	@Inject
	private CurrentChapter currentChapter;

	public BookSelectionListener getSelectionListener() {
		return selectionListener;
	}

	public BookClickListener getBookClickListener() {
		return bookClickListener;
	}

	public BooksKeyListener getBooksKeyListener() {
		return booksKeyListener;
	}

	public MessageService getMessageService() {
		return messageService;
	}

	public CurrentChapter getCurrentChapter() {
		return currentChapter;
	}
}