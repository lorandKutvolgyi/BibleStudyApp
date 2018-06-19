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
import com.lory.biblereader.model.Bible;
import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.dao.BibleDaoFactory;
import com.lory.biblereader.parts.leftstack.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkManager;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkSelectionPopup;

@Creatable
@Singleton
public class BookClickListener extends MouseAdapter {

	@Inject
	private BookSelectionListener bookSelectionListener;
	@Inject
	private MessageService messageService;
	@Inject
	private BookMarkManager bookMarkManager;
	@Inject
	private BooksComparator booksComparator;
	@Inject
	private Bible bible;

	@Override
	public void mouseDown(MouseEvent event) {
		if (isRightClickOnBook(event)) {
			createMenu(event);
			bookSelectionListener.allowSelectionChangeEvent(false);
		} else {
			bookSelectionListener.allowSelectionChangeEvent(true);
		}
	}

	private boolean isRightClickOnBook(MouseEvent event) {
		return isRightClick(event) && isBookSource(event);
	}

	private boolean isRightClick(MouseEvent event) {
		return event.button == 3;
	}

	private boolean isBookSource(MouseEvent e) {
		return ((Tree) e.getSource()).getSelection()[0].getParentItem() != null;
	}

	private void createMenu(MouseEvent mouseEvent) {
		Control control = (Control) mouseEvent.getSource();
		Menu menu = new Menu(control);
		createAddToBookMarkMenuItem(mouseEvent, menu);
		menu.setVisible(true);
	}

	private void createAddToBookMarkMenuItem(MouseEvent mouseEvent, Menu menu) {
		MenuItem addToBookMark = new MenuItem(menu, SWT.PUSH);
		addToBookMark.setText(messageService.getMessage("newBookMark"));
		addToBookMark.addListener(SWT.Selection, event -> {
			BookMarkSelectionPopup bookMarkSelectionPopup = new BookMarkSelectionPopup(messageService, bookMarkManager,
					booksComparator, bible);
			bookMarkSelectionPopup.open(getChapter(mouseEvent));
		});
	}

	private Chapter getChapter(MouseEvent mouseEvent) {
		return BibleDaoFactory.getInstance().findChapterById(getSelectedBook(mouseEvent), 1);
	}

	private Book getSelectedBook(MouseEvent mouseEvent) {
		return (Book) ((Tree) mouseEvent.getSource()).getSelection()[0].getData();
	}

}
