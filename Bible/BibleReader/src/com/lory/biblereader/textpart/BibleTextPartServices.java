package com.lory.biblereader.textpart;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.base.translation.menu.TranslationManager;
import com.lory.biblereader.bookspart.eventhandler.BooksKeyListener;
import com.lory.biblereader.textpart.eventhandler.BrowserMouseListener;
import com.lory.biblereader.textpart.eventhandler.BrowserProgressListener;
import com.lory.biblereader.textpart.eventhandler.SearchTextVerifyListener;
import com.lory.biblereader.textpart.eventhandler.TextSearchListener;

@Creatable
public class BibleTextPartServices {

	@Inject
	protected TextPartManager textPartManager;
	@Inject
	protected TextSearchListener textSearchListener;
	@Inject
	protected BrowserMouseListener browserMouseListener;
	@Inject
	protected BrowserProgressListener browserProgressListener;
	@Inject
	protected SearchTextVerifyListener searchTextVerifyListener;
	@Inject
	protected BooksKeyListener booksKeyListener;
	@Inject
	protected MessageService messageService;
	@Inject
	protected TranslationManager translationManager;

	public BooksKeyListener getBooksKeyListener() {
		return booksKeyListener;
	}

	public TextPartManager getTextPartManager() {
		return textPartManager;
	}

	public MessageService getMessageService() {
		return messageService;
	}

	public TranslationManager getTranslationManager() {
		return translationManager;
	}

	public TextSearchListener getTextSearchListener() {
		return textSearchListener;
	}

	public BrowserMouseListener getBrowserMouseListener() {
		return browserMouseListener;
	}

	public BrowserProgressListener getBrowserProgressListener() {
		return browserProgressListener;
	}

	public SearchTextVerifyListener getSearchTextVerifyListener() {
		return searchTextVerifyListener;
	}
}
