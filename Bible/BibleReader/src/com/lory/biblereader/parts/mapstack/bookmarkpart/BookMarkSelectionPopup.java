package com.lory.biblereader.parts.mapstack.bookmarkpart;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Shell;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.Bible;
import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;

public class BookMarkSelectionPopup {
	private MessageService messageService;
	private Shell shell;
	private BookMarkManager bookMarkManager;
	private Combo categories;
	private Combo books;
	private Combo chapters;
	private Button cancel;
	private Combo verses;
	private Group group;

	public BookMarkSelectionPopup(MessageService messageService, BookMarkManager bookMarkManager) {
		this.messageService = messageService;
		this.bookMarkManager = bookMarkManager;

		createPopupShell();
		createGroup();
		createCategoriesCombo();
		createBooksCombo();
		createChaptersCombo();
		createVersesCombo();
		createButtons();
	}

	private void createPopupShell() {
		shell = new Shell(Display.getDefault().getActiveShell(), SWT.APPLICATION_MODAL);
		FillLayout fillLayout = new FillLayout(SWT.VERTICAL);
		shell.setLayout(fillLayout);
		fillLayout.marginHeight = 5;
		fillLayout.marginWidth = 5;
		fillLayout.spacing = 1;
		shell.setSize(340, 140);
	}

	private void createGroup() {
		group = new Group(shell, SWT.SHADOW_ETCHED_IN);
		group.setText("New bookmark");
		GridLayout groupLayout = new GridLayout(3, false);
		groupLayout.verticalSpacing = 10;
		group.setLayout(groupLayout);
	}

	private void createCategoriesCombo() {
		categories = new Combo(group, SWT.DROP_DOWN);
		categories.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 3, 1));
	}

	private void createBooksCombo() {
		books = new Combo(group, SWT.DROP_DOWN | SWT.READ_ONLY);
		books.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1));
		books.addSelectionListener(new SelectionListener() {

			@Override
			public void widgetSelected(SelectionEvent e) {
				chapters.removeAll();
				for (Chapter chapter : Bible.getBooks().get(books.getSelectionIndex()).getChapters()) {
					chapters.add(String.valueOf(chapter.getId()));
				}
				chapters.select(0);
			}

			@Override
			public void widgetDefaultSelected(SelectionEvent e) {
			}
		});
	}

	private void createChaptersCombo() {
		chapters = new Combo(group, SWT.DROP_DOWN | SWT.READ_ONLY);
		chapters.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1));
	}

	private void createVersesCombo() {
		verses = new Combo(group, SWT.DROP_DOWN | SWT.READ_ONLY);
		verses.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1));
	}

	private void createButtons() {
		Composite buttons = createButtonComposite();
		createOkButton(buttons);
		createCancelButton(buttons);
	}

	private Composite createButtonComposite() {
		Composite buttons = new Composite(group, SWT.NONE);
		GridLayout buttonsLayout = new GridLayout(2, true);
		buttonsLayout.marginWidth = 0;
		buttonsLayout.horizontalSpacing = 15;
		buttons.setLayout(buttonsLayout);
		return buttons;
	}

	private void createOkButton(Composite buttons) {
		Button ok = new Button(buttons, SWT.PUSH);
		ok.setText("Ok");
		ok.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
	}

	private void createCancelButton(Composite buttons) {
		cancel = new Button(buttons, SWT.PUSH);
		cancel.setText("Cancel");
		cancel.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
		setListenerToCancel();
	}

	private void setListenerToCancel() {
		cancel.addSelectionListener(new SelectionListener() {

			@Override
			public void widgetSelected(SelectionEvent e) {
				shell.close();
			}

			@Override
			public void widgetDefaultSelected(SelectionEvent e) {
			}
		});
	}

	public void open() {
		fillCategoriesCombo();
		fillBooksCombo(0);
		fillChaptersCombo(0);

		shell.open();
		cancel.setFocus();

		addPlaceHolderToCategories();
	}

	public void open(Chapter chapter) {
		fillCategoriesCombo();
		fillBooksCombo(Bible.getBooks().indexOf(chapter.getBook()));
		fillChaptersCombo(chapter.getId());

		shell.open();
		cancel.setFocus();

		addPlaceHolderToCategories();
	}

	private void fillCategoriesCombo() {
		bookMarkManager.getCategories().keySet().stream().map(category -> category.getText())
				.forEach(text -> categories.setItems(text));

		categories.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
		categories.setText("Category");
	}

	private void fillBooksCombo(int selection) {
		for (Book book : Bible.getBooks()) {
			books.add(messageService.getMessage(book.getTitle()));
		}
		books.select(selection);
	}

	private void fillChaptersCombo(int selection) {
		for (Chapter chapter : Bible.getBooks().get(0).getChapters()) {
			chapters.add(String.valueOf(chapter.getId()));
		}
		chapters.select(selection);
	}

	private void addPlaceHolderToCategories() {
		removeSelectionInCategories();
		addFocusListenerToCategories();
	}

	private void removeSelectionInCategories() {
		categories.setSelection(new Point(0, 0));
	}

	private void addFocusListenerToCategories() {
		categories.addFocusListener(new FocusListener() {
			@Override
			public void focusLost(FocusEvent e) {
				String text = categories.getText();
				if (text.isEmpty()) {
					categories.setText("Category");
					categories.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
				}
			}

			@Override
			public void focusGained(FocusEvent e) {
				String text = categories.getText();
				if (text.equals("Category")) {
					categories.setText("");
					categories.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_BLACK));
				}
			}
		});
	}

}
