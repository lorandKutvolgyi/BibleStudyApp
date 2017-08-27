package com.lory.biblereader.parts.mapstack.bookmarkpart;

import java.util.List;

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
import org.eclipse.swt.widgets.Text;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.Bible;
import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;

public class BookMarkSelectionPopup {
	private MessageService messageService;
	private final String PLACEHOLDER_FOR_CATEGORY;
	private final String PLACEHOLDER_FOR_VERSES;
	private Shell shell;
	private BookMarkManager bookMarkManager;
	private Combo categories;
	private Combo books;
	private Combo chapters;
	private Button cancel;
	private Text verses;
	private Group group;
	private Button save;

	public BookMarkSelectionPopup(MessageService messageService, BookMarkManager bookMarkManager) {
		this.messageService = messageService;
		this.bookMarkManager = bookMarkManager;

		PLACEHOLDER_FOR_CATEGORY = messageService.getMessage("label");
		PLACEHOLDER_FOR_VERSES = messageService.getMessage("verses");

		createPopupShell();
		createGroup();
		createCategoriesCombo();
		createBooksCombo();
		createChaptersCombo();
		createVersesText();
		createButtons();
	}

	private void createPopupShell() {
		shell = new Shell(Display.getDefault().getActiveShell(), SWT.APPLICATION_MODAL);
		FillLayout fillLayout = new FillLayout(SWT.VERTICAL);
		fillLayout.marginHeight = 5;
		fillLayout.marginWidth = 5;
		fillLayout.spacing = 1;
		shell.setLayout(fillLayout);
		shell.setSize(340, 140);
	}

	private void createGroup() {
		group = new Group(shell, SWT.SHADOW_ETCHED_IN);
		group.setText(messageService.getMessage("newBookMark"));
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

	private void createVersesText() {
		verses = new Text(group, SWT.BORDER);
		verses.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1));
		verses.addVerifyListener(event -> {
			event.doit = event.character == '-' || event.character == ','
					|| (event.character > '0' && event.character < '9') || event.text.equals(PLACEHOLDER_FOR_VERSES)
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
		setListenerToSave();
	}

	private void createCancelButton(Composite buttons) {
		cancel = new Button(buttons, SWT.PUSH);
		cancel.setText(messageService.getMessage("cancel"));
		cancel.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
		setListenerToCancel();
	}

	private void setListenerToSave() {
		save.addSelectionListener(new SelectionListener() {

			@Override
			public void widgetSelected(SelectionEvent e) {
				save.setEnabled(false);
				cancel.setEnabled(false);
				Chapter chapter = Bible.getBooks().get(books.getSelectionIndex()).getChapters()
						.get(chapters.getSelectionIndex());
				List<Integer> versesAsIntegers = BookMarkUtil
						.getVersesAsIntegers(isVersesEmpty() ? "" : verses.getText());
				BookMarkCategory category = isCategoriesEmpty() ? bookMarkManager.getDefaultCategory()
						: new BookMarkCategory(categories.getText(), bookMarkManager);
				bookMarkManager.storeBookMark(new BookMark(chapter, versesAsIntegers, category, messageService));
				shell.close();
			}

			@Override
			public void widgetDefaultSelected(SelectionEvent e) {
			}
		});
	}

	private boolean isVersesEmpty() {
		boolean empty = verses.getText().isEmpty();
		boolean placeholder = verses.getText().equals(PLACEHOLDER_FOR_VERSES)
				&& verses.getForeground().equals(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
		return empty || placeholder;
	}

	private boolean isCategoriesEmpty() {
		boolean empty = categories.getText().isEmpty();
		boolean placeholder = categories.getText().equals(PLACEHOLDER_FOR_CATEGORY)
				&& categories.getForeground().equals(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
		return empty || placeholder;
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
		fillChaptersCombo(1);

		shell.open();
		cancel.setFocus();

		addPlaceHolderToCategories();
		addPlaceHolderToVerses();
	}

	public void open(Chapter chapter) {
		shell.open();
		cancel.setFocus();

		fillCategoriesCombo();
		fillBooksCombo(Bible.getBooks().indexOf(chapter.getBook()));
		fillChaptersCombo(chapter.getId());

		addPlaceHolderToCategories();
		addPlaceHolderToVerses();
	}

	private void fillCategoriesCombo() {
		bookMarkManager.getCategories().keySet().stream().map(category -> category.getText())
				.forEach(text -> categories.setItems(text));

		categories.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
		categories.setText(PLACEHOLDER_FOR_CATEGORY);
	}

	private void fillBooksCombo(int selection) {
		for (Book book : Bible.getBooks()) {
			books.add(messageService.getMessage(book.getTitle()));
		}
		books.select(selection);
	}

	private void fillChaptersCombo(int selection) {
		for (Chapter chapter : Bible.getBooks().get(books.getSelectionIndex()).getChapters()) {
			chapters.add(String.valueOf(chapter.getId()));
		}
		chapters.select(selection - 1);
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
				if (text.isEmpty() && !categories.getListVisible()) {
					categories.setText(PLACEHOLDER_FOR_CATEGORY);
					categories.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
				}
			}

			@Override
			public void focusGained(FocusEvent e) {
				String text = categories.getText();
				if (text.equals(PLACEHOLDER_FOR_CATEGORY)) {
					categories.setText("");
				}
				categories.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_BLACK));
			}
		});
	}

	private void addPlaceHolderToVerses() {
		verses.setText(PLACEHOLDER_FOR_VERSES);
		verses.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
		verses.addFocusListener(new FocusListener() {

			@Override
			public void focusLost(FocusEvent e) {
				String text = verses.getText();
				if (text.isEmpty()) {
					verses.setText(PLACEHOLDER_FOR_VERSES);
					verses.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
				}
			}

			@Override
			public void focusGained(FocusEvent e) {
				String text = verses.getText();
				if (text.equals(PLACEHOLDER_FOR_VERSES)) {
					verses.setText("");
				}
				verses.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_BLACK));
			}
		});
	}
}
