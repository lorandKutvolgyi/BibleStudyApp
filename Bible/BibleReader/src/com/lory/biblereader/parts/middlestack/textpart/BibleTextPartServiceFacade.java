package com.lory.biblereader.parts.middlestack.textpart;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.dao.BibleDao;
import com.lory.biblereader.parts.leftstack.bookspart.eventhandler.BooksKeyListener;
import com.lory.biblereader.parts.middlestack.textpart.eventhandler.SearchTextVerifyListener;
import com.lory.biblereader.parts.middlestack.textpart.eventhandler.TextSearchListener;
import com.lory.biblereader.service.ServiceFacade;

@Creatable
@Singleton
public class BibleTextPartServiceFacade extends ServiceFacade {

	@Inject
	protected TextPartManager textPartManager;
	@Inject
	protected TextSearchListener textSearchListener;
	@Inject
	protected SearchTextVerifyListener searchTextVerifyListener;
	@Inject
	protected BooksKeyListener booksKeyListener;
	@Inject
	protected MessageService messageService;
	@Inject
	protected TranslationManager translationManager;
	@Inject
	protected BibleDao bibleDao;

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

	public BibleDao getBibleDao() {
		return bibleDao;
	}

	public TextSearchListener getTextSearchListener() {
		return textSearchListener;
	}

	public SearchTextVerifyListener getSearchTextVerifyListener() {
		return searchTextVerifyListener;
	}
}
