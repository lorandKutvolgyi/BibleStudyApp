package com.lory.biblereader.parts.leftstack.bookspart.eventhandler;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Tree;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.dao.ChapterSqlDao;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkManager;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkSelectionPopup;

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
	public void mouseDown(MouseEvent event) {
		if (event.button == 3 && isBook(event)) {
			Menu menu = createMenu((Control) event.getSource(), event);
			menu.setVisible(true);
			bookSelectionListener.allowSelectionChangeEvent(false);
		} else {
			bookSelectionListener.allowSelectionChangeEvent(true);
		}
	}

	private Menu createMenu(Control control, MouseEvent mouseEvent) {
		Menu menu = new Menu(control);
		MenuItem addToBookMark = new MenuItem(menu, SWT.PUSH);
		addToBookMark.setText(messageService.getMessage("newBookMark"));
		addToBookMark.addListener(SWT.Selection, event -> {
			BookMarkSelectionPopup bookMarkSelectionPopup = new BookMarkSelectionPopup(messageService, bookMarkManager);
			bookMarkSelectionPopup.open(chapterSqlDao
					.findChapterById((Book) ((Tree) mouseEvent.getSource()).getSelection()[0].getData(), 1));
		});

		return menu;
	}

	private boolean isBook(MouseEvent e) {
		return ((Tree) e.getSource()).getSelection()[0].getParentItem() != null;
	}

}
