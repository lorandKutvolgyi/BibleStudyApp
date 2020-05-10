package com.lory.biblereader.textpart.contextmenu;

import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.BrowserFunction;

import com.lory.biblereader.textpart.JavaScriptCreator;
import com.lory.biblereader.textpart.repository.TextRepository;

public class StepFunction extends BrowserFunction {

	private Browser browser = null;
	private TextRepository textRepository;

	public StepFunction(Browser browser, String name, TextRepository textRepository) {
		super(browser, name);
		this.browser = browser;
		this.textRepository = textRepository;
	}

	@Override
	public Object function(Object[] arguments) {
		String translation = (String) arguments[1];
		String book = (String) arguments[2];
		int chapter = Integer.parseInt((String) arguments[3]);
		int verse = Integer.parseInt((String) arguments[4]);
		VerseContext context = null;
		if (arguments[0].equals("previous")) {
			context = stepBack(translation, book, chapter, verse);
		} else {
			context = stepForward(translation, book, chapter, verse);
		}
		browser.evaluate(JavaScriptCreator.getVerseChangeScript(context, textRepository));
		return null;
	}

	private VerseContext stepBack(String translation, String book, int chapter, int verse) {
		int newVerse = verse;
		int newChapter = chapter;
		if (!isFirstVerse(verse)) {
			newVerse--;
		} else {
			if (!isFirstChapter(chapter)) {
				newChapter--;
				newVerse = getLastVerse(translation, book, newChapter);
			}
		}
		if (newVerse != verse) {
			return new VerseContext(translation, book, newChapter, newVerse);
		}
		return null;
	}

	private VerseContext stepForward(String translation, String book, int chapter, int verse) {
		int newVerse = verse;
		int newChapter = chapter;
		if (!isLastVerse(translation, book, chapter, verse)) {
			newVerse++;
		} else {
			if (!isLastChapter(translation, book, chapter)) {
				newChapter++;
				newVerse = 1;
			}
		}
		if (newVerse != verse) {
			return new VerseContext(translation, book, newChapter, newVerse);
		}
		return null;
	}

	private boolean isFirstVerse(int verse) {
		return verse == 1;
	}

	private boolean isFirstChapter(int chapter) {
		return chapter == 1;
	}

	private int getLastVerse(String translation, String book, int chapter) {
		return textRepository.getChapterSize(book, chapter, translation);
	}

	private boolean isLastVerse(String translation, String book, int chapter, int verse) {
		return verse == textRepository.getChapterSize(book, chapter, translation);
	}

	private boolean isLastChapter(String translation, String book, int chapter) {
		return chapter == textRepository.getBookSize(book, translation);
	}
}