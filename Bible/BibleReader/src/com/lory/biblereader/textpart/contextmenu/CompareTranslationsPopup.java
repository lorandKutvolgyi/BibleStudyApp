package com.lory.biblereader.textpart.contextmenu;

import org.eclipse.swt.SWT;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

import com.google.common.collect.Multimap;
import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.base.translation.menu.TranslationManager;
import com.lory.biblereader.base.translation.model.Chapter;
import com.lory.biblereader.base.translation.model.dao.BibleDao;

public class CompareTranslationsPopup {

	private Chapter chapter;
	private String verse;
	private Shell shell;
	private Display display = Display.getDefault();
	private TranslationManager translationManager;
	private MessageService messageService;
	private DisplayService displayService;
	private Browser browser;
	private BibleDao bibleDao;

	public CompareTranslationsPopup(Chapter chapter, String verse, TranslationManager translationManager,
			MessageService messageService, DisplayService displayService, BibleDao bibleDao) {
		this.chapter = chapter;
		this.verse = verse;
		this.translationManager = translationManager;
		this.messageService = messageService;
		this.displayService = displayService;
		this.bibleDao = bibleDao;
	}

	public void open() {
		initShell();
		shell.open();
	}

	private void initShell() {
		createNewShell();
		createBrowserInShell();
		createStepFunction();
	}

	private void createNewShell() {
		shell = new Shell(display.getActiveShell(),
				SWT.APPLICATION_MODAL | SWT.CLOSE | SWT.RESIZE | SWT.SCROLLBAR_OVERLAY);
		shell.setLayout(new GridLayout(1, true));
		shell.setText(messageService.getMessage(chapter.getBook().getTitle()) + " " + chapter.getId() + ":" + verse);
		shell.setSize(displayService.getMonitorWidth(shell) / 2, displayService.getMonitorHeight(shell) / 2);
	}

	private void createBrowserInShell() {
		browser = new Browser(shell, SWT.NONE);
		browser.addListener(SWT.MenuDetect, event -> event.doit = false);
		browser.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true));
		browser.setText(createBrowserContent().toString());
	}

	// step function will be called by javascript code
	private void createStepFunction() {
		new StepFunction(browser, "step", bibleDao);
	}

	private StringBuilder createBrowserContent() {
		String activeTranslation = translationManager.getActiveTranslationAbbreviation();
		HtmlCreator creator = new HtmlCreator(shell, chapter, verse, bibleDao);
		StringBuilder content = new StringBuilder(creator.createStartHtml())
				.append(creator.createHtml(activeTranslation));
		Multimap<String, String> availableTranslations = translationManager.getAvailableTranslations();
		availableTranslations.values().stream()
				.filter(translation -> !translation.split(":")[0].equals(activeTranslation)).forEach(translation -> {
					content.append(creator.createHtml(translation.split(":")[0]));
				});
		content.append(creator.createEndHtml());
		return content;
	}
}
