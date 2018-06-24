package com.lory.biblereader.parts.leftstack.bookspart;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.parts.leftstack.bookspart.eventhandler.BookClickListener;
import com.lory.biblereader.parts.leftstack.bookspart.eventhandler.BookSelectionListener;
import com.lory.biblereader.parts.leftstack.bookspart.eventhandler.BooksKeyListener;
import com.lory.biblereader.service.ServiceFacade;

@Creatable
@Singleton
public class BooksPartServiceFacade extends ServiceFacade {

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