package com.lory.biblereader.parts.textpart.eventhandler;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Text;

@Creatable
public class TextSearchListener implements ModifyListener {
	private StyledText bibleText;

	public void setBibleText(StyledText text) {
		this.bibleText = text;
	}

	@Override
	public void modifyText(ModifyEvent e) {
		clearStyle();
		String searchText = ((Text) e.getSource()).getText().toLowerCase();
		if (searchText.length() <= 1) {
			return;
		}
		searchText = String.join("[\\s0-9]*", searchText.split("")).replaceAll("([.?()])", "\\\\$1");
		String text = bibleText.getText().toLowerCase();
		Pattern pattern = Pattern.compile(searchText);
		Matcher matcher = pattern.matcher(text);
		if (matcher.find()) {
			int start = matcher.start();
			int end = matcher.end();
			createStyle(start, end);
			scrollTo(start);
			while (matcher.find(end + 1)) {
				start = matcher.start();
				end = matcher.end();
				createStyle(start, end);
			}
		}
	}

	private void scrollTo(int start) {
		int firstFound = bibleText.getLineAtOffset(start);
		bibleText.setTopIndex(firstFound);
	}

	private void clearStyle() {
		bibleText.setStyleRange(null);
	}

	private void createStyle(int start, int end) {
		StyleRange style = new StyleRange();
		style.start = start;
		style.length = (end - start) + numOfNumbers(start, end) - numOfNewLineChars(start, end);
		style.background = Display.getCurrent().getSystemColor(SWT.COLOR_RED);
		style.foreground = Display.getCurrent().getSystemColor(SWT.COLOR_WHITE);
		bibleText.setStyleRange(style);
	}

	private int numOfNumbers(int start, int end) {
		return bibleText.getText(start, end - 1).replaceAll("[^0-9]", "").length();
	}

	private int numOfNewLineChars(int start, int end) {
		return bibleText.getText(start, end - 1).replaceAll("[\\S]", "").length();
	}

}
