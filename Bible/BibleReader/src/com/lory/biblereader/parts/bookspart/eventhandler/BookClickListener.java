package com.lory.biblereader.parts.bookspart.eventhandler;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.widgets.Tree;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.dao.ChapterSqlDao;
import com.lory.biblereader.parts.mapstack.bookmarkpart.BookMarkManager;
import com.lory.biblereader.parts.mapstack.bookmarkpart.BookMarkSelectionPopup;

/**
 * EventHandler for mouse click events triggered on BookTree.
 *
 * @author lorandKutvolgyi
 *
 */
@Creatable
@Singleton
public class BookClickListener extends MouseAdapter {
	@Inject
	private BookSelectionListener bookSelectionListener;
	@Inject
	private MessageService messageService;
	@Inject
	private BookMarkManager bookMarkManager;
	private ChapterSqlDao chapterSqlDao = new ChapterSqlDao();

	@Override
	public void mouseDown(MouseEvent e) {
		if (e.button == 3 && isBook(e)) {
			BookMarkSelectionPopup bookMarkSelectionPopup = new BookMarkSelectionPopup(messageService, bookMarkManager);
			bookMarkSelectionPopup
					.open(chapterSqlDao.findChapterById((Book) ((Tree) e.getSource()).getSelection()[0].getData(), 1));
		} else {
			bookSelectionListener.allowSelectionChangeEvent(true);
		}
	}

	private boolean isBook(MouseEvent e) {
		return ((Tree) e.getSource()).getSelection()[0].getParentItem() != null;
	}

}
