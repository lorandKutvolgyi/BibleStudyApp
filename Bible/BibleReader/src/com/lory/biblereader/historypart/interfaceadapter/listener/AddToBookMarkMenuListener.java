package com.lory.biblereader.historypart.interfaceadapter.listener;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.bookmarkpart.BookMarkManager;
import com.lory.biblereader.bookmarkpart.BookMarkSelectionPopup;
import com.lory.biblereader.bookspart.Bible;
import com.lory.biblereader.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.textpart.Chapter;
import com.lory.biblereader.textpart.repository.TextRepository;

@Creatable
@Singleton
public class AddToBookMarkMenuListener implements Listener {

	private MessageService messageService;
	private BookMarkManager bookMarkManager;
	private BooksComparator booksComparator;
	private Bible bible;
	private TranslationManager translationManager;
	private TextRepository textRepository;

	@Inject
	public AddToBookMarkMenuListener(MessageService messageService, BookMarkManager bookMarkManager,
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
	public void handleEvent(Event event) {
		new BookMarkSelectionPopup(messageService, bookMarkManager, booksComparator, bible, translationManager,
				textRepository).open((Chapter) event.widget.getData());
	}
}
