package com.lory.biblereader.parts.middlestack.textpart.eventhandler;

import org.eclipse.swt.SWT;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

import com.google.common.collect.Multimap;
import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.dao.BibleDaoFactory;
import com.lory.biblereader.service.DisplayService;

public class CompareTranslationsPopup {

	private Chapter chapter;
	private String verse;
	private Shell shell;
	private Display display = Display.getDefault();
	private TranslationManager translationManager;
	private MessageService messageService;
	private DisplayService displayService;

	public CompareTranslationsPopup(Chapter chapter, String verse, TranslationManager translationManager,
			MessageService messageService, DisplayService displayService) {
		this.chapter = chapter;
		this.verse = verse;
		this.translationManager = translationManager;
		this.messageService = messageService;
		this.displayService = displayService;
	}

	public void open() {
		initShell();
		shell.open();
	}

	private void initShell() {
		createNewShell();
		createBrowserInShell();
	}

	private void createNewShell() {
		shell = new Shell(display.getActiveShell(),
				SWT.APPLICATION_MODAL | SWT.CLOSE | SWT.RESIZE | SWT.SCROLLBAR_OVERLAY);
		shell.setLayout(new GridLayout(1, true));
		shell.setText(messageService.getMessage(chapter.getBook().getTitle()) + " " + chapter.getId() + ":" + verse);
		shell.setSize(displayService.getMonitorWidth(shell) / 2, displayService.getMonitorHeight(shell) / 2);
	}

	private void createBrowserInShell() {
		Browser text = new Browser(shell, SWT.NONE);
		text.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true));
		text.setText(createBrowserContent().toString());
	}

	private StringBuilder createBrowserContent() {
		String activeTranslation = translationManager.getActiveTranslationAbbreviation();
		StringBuilder content = new StringBuilder(createStartHtml()).append(createHtml(activeTranslation));
		Multimap<String, String> availableTranslations = translationManager.getAvailableTranslations();
		availableTranslations.values().stream()
				.filter(translation -> !translation.split(":")[0].equals(activeTranslation)).forEach(translation -> {
					content.append(createHtml(translation.split(":")[0]));
				});
		content.append(createEndHtml());
		return content;
	}

	// @formatter:off
	private String createStartHtml() {
		return    "<head>"
				+     "<style>" 
		        +         "span {"
		        +             "display: inline-block;"
		        +             "width:" + shell.getSize().x*.7
				+         "}"
				+         "button {"
		        +             "vertical-align: top;"
				+             "margin-right:20;"
				+             "margin-left:20;"
				+         "}"
				+     "</style>"
				+ "</head>"
				+ "<body>";
	}

	private String createHtml(String translation) {
		 return       ""
		        +     "<h4>" + translation + "</h4>" 
		        +     "<div class='container'>"
				+         "<button class='previous' name='" + translation + "'><</button>"
				+         "<span>" + BibleDaoFactory.getInstance().findVerseByChapterAndId(chapter, verse, translation) + "</span>"
				+         "<button name='" + translation + "'>></button>"
				+     "</div>"
				;
		
	}
	
	private String createEndHtml() {
		return    "</body>";
	}
	// @formatter:on 
}
