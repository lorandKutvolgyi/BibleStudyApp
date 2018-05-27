package com.lory.biblereader.parts.middlestack.textpart.eventhandler;

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
		if (searchText.length() < 2) {
			return;
		}
		searchText = String.join("[\\p{C}0-9 ]+", searchText.split(" +")).replaceAll("([.?()])", "\\\\$1");
		String text = bibleText.getText().toLowerCase();
		Pattern pattern = Pattern.compile(searchText);
		Matcher matcher = pattern.matcher(text);
		if (matcher.find()) {
			markFoundTextParts(matcher);
		}
	}

	private void clearStyle() {
		bibleText.setStyleRange(null);
	}

	private void markFoundTextParts(Matcher matcher) {
		scrollTo(matcher.start());
		do {
			createStyle(matcher.start(), matcher.end());
		} while (matcher.find(matcher.end()));
	}

	private void scrollTo(int start) {
		int firstFoundLine = bibleText.getLineAtOffset(start);
		bibleText.setTopIndex(firstFoundLine);
	}

	public void createStyle(int start, int end) {
		StyleRange style = new StyleRange();
		style.start = start;
		style.length = (end - start);
		style.background = Display.getCurrent().getSystemColor(SWT.COLOR_RED);
		style.foreground = Display.getCurrent().getSystemColor(SWT.COLOR_WHITE);
		bibleText.setStyleRange(style);
	}
}
