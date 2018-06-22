package com.lory.biblereader.parts.upperrightstack.bookmarkpart;

import org.eclipse.swt.SWT;
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
import org.eclipse.swt.widgets.Text;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.Bible;
import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.parts.leftstack.bookspart.treesorter.BooksComparator;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.eventhandler.BooksComboSelectionListener;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.eventhandler.CancelButtonSelectionListener;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.eventhandler.CategoriesFocusListener;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.eventhandler.SaveButtonSelectionListener;
import com.lory.biblereader.parts.upperrightstack.bookmarkpart.eventhandler.VersesComboFocusListener;

public class BookMarkSelectionPopup {

	private MessageService messageService;
	private BookMarkManager bookMarkManager;
	private BooksComparator booksComparator;
	private Bible bible;
	private TranslationManager translationManager;
	private final String placeholderForCategories;
	private final String placeholderForVerses;
	private Shell shell;
	private Combo categories;
	private Combo books;
	private Combo chapters;
	private Button cancel;
	private Text verses;
	private Group group;
	private Button save;

	public BookMarkSelectionPopup(MessageService messageService, BookMarkManager bookMarkManager,
			BooksComparator booksComparator, Bible bible, TranslationManager translationManager) {
		this.messageService = messageService;
		this.bookMarkManager = bookMarkManager;
		this.booksComparator = booksComparator;
		this.placeholderForCategories = messageService.getMessage("label");
		this.placeholderForVerses = messageService.getMessage("verses");
		this.bible = bible;
		this.translationManager = translationManager;

		createPopupShell();
		createGroup();
		createCategoriesCombo();
		createBooksCombo();
		createChaptersCombo();
		createVersesText();
		createButtons();
		fillCategoriesCombo();
		fillBooksCombo();
	}

	private void createPopupShell() {
		shell = new Shell(Display.getDefault().getActiveShell(), SWT.APPLICATION_MODAL);
		shell.setSize(340, 140);
		shell.setLayout(createShellLayout());
	}

	private FillLayout createShellLayout() {
		FillLayout fillLayout = new FillLayout(SWT.VERTICAL);
		fillLayout.marginHeight = 5;
		fillLayout.marginWidth = 5;
		fillLayout.spacing = 1;
		return fillLayout;
	}

	private void createGroup() {
		group = new Group(shell, SWT.SHADOW_ETCHED_IN);
		group.setText(messageService.getMessage("newBookMark"));
		group.setLayout(createGroupLayout());
	}

	private GridLayout createGroupLayout() {
		GridLayout groupLayout = new GridLayout(3, false);
		groupLayout.verticalSpacing = 10;
		groupLayout.horizontalSpacing = 2;
		return groupLayout;
	}

	private void createCategoriesCombo() {
		categories = new Combo(group, SWT.DROP_DOWN);
		categories.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 3, 1));
	}

	private void createBooksCombo() {
		books = new Combo(group, SWT.DROP_DOWN | SWT.READ_ONLY);
		books.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1));
		books.setVisibleItemCount(10);
		books.addSelectionListener(new BooksComboSelectionListener(books, chapters, bible, translationManager));
	}

	private void createChaptersCombo() {
		chapters = new Combo(group, SWT.DROP_DOWN | SWT.READ_ONLY);
		chapters.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1));
		chapters.setVisibleItemCount(10);
	}

	private void createVersesText() {
		verses = new Text(group, SWT.BORDER);
		verses.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1));
		verses.addVerifyListener(event -> {
			event.doit = event.character == '-' || event.character == ','
					|| (event.character > '0' && event.character < '9') || event.text.equals(placeholderForVerses)
					|| event.text.equals("");
		});
	}

	private void createButtons() {
		Composite buttons = createButtonComposite();
		createSaveButton(buttons);
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

	private void createSaveButton(Composite buttons) {
		save = new Button(buttons, SWT.PUSH);
		save.setText(messageService.getMessage("save"));
		save.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
		save.addSelectionListener(
				new SaveButtonSelectionListener(this, bookMarkManager, messageService, bible, translationManager));
	}

	private void createCancelButton(Composite buttons) {
		cancel = new Button(buttons, SWT.PUSH);
		cancel.setText(messageService.getMessage("cancel"));
		cancel.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
		cancel.addSelectionListener(new CancelButtonSelectionListener(this));
	}

	public void open() {
		Book firstBook = booksComparator.current().getBooks().get(0);
		open(firstBook.getChapter(1, null, translationManager));
	}

	public void open(Chapter chapter) {
		shell.open();
		cancel.setFocus();
		books.select(bible.getBooks().indexOf(chapter.getBook()));
		fillChaptersCombo();
		chapters.select(chapter.getId() - 1);
		addPlaceHolderToCategories();
		addPlaceHolderToVerses();
	}

	private void fillCategoriesCombo() {
		bookMarkManager.getCategories().keySet().stream().map(category -> category.getText())
				.forEach(text -> categories.setItems(text));

		categories.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
		categories.setText(placeholderForCategories);
	}

	private void fillBooksCombo() {
		for (Book book : bible.getBooks()) {
			books.add(messageService.getMessage(book.getTitle()));
		}
	}

	private void fillChaptersCombo() {
		int size = bible.getBooks().get(books.getSelectionIndex()).getBookSize(translationManager);
		for (int i = 1; i <= size; i++) {
			chapters.add(String.valueOf(i));
		}
	}

	private void addPlaceHolderToCategories() {
		removeSelectionInCategories();
		addFocusListenerToCategories();
	}

	private void removeSelectionInCategories() {
		categories.setSelection(new Point(0, 0));
	}

	private void addFocusListenerToCategories() {
		categories.addFocusListener(new CategoriesFocusListener(this));
	}

	private void addPlaceHolderToVerses() {
		verses.setText(placeholderForVerses);
		verses.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
		verses.addFocusListener(new VersesComboFocusListener(this));
	}

	public void close() {
		shell.close();
	}

	public Text getVerses() {
		return verses;
	}

	public Combo getChapters() {
		return chapters;
	}

	public Combo getBooks() {
		return books;
	}

	public Combo getCategories() {
		return categories;
	}

	public Button getSave() {
		return save;
	}

	public Button getCancel() {
		return cancel;
	}

	public String getPlaceholderForVerses() {
		return placeholderForVerses;
	}

	public String getPlaceholderForCategories() {
		return placeholderForCategories;
	}
}
