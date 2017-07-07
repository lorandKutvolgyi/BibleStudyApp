package com.lory.biblereader.parts.textpart.eventhandler;

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
	private final int TOP = 0;

	public void setBibleText(StyledText text) {
		this.bibleText = text;
	}

	@Override
	public void modifyText(ModifyEvent e) {
		clearStyle();
		String searchText = ((Text) e.getSource()).getText();
		if (searchText.length() <= 1) {
			return;
		}
		String text = bibleText.getText();
		int start = text.indexOf(searchText);
		if (start > -1) {
			createStyle(searchText, text, start);
			scrollTo(start);
			start = text.indexOf(searchText, start + 1);
			while (start != -1) {
				createStyle(searchText, text, start);
				start = text.indexOf(searchText, start + 1);
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

	private void createStyle(String searchText, String text, int start) {
		StyleRange style = new StyleRange();
		style.start = start;
		style.length = searchText.length()
				+ text.substring(style.start, style.start + searchText.length()).replaceAll("\\D", "").length();
		style.background = Display.getCurrent().getSystemColor(SWT.COLOR_RED);
		style.foreground = Display.getCurrent().getSystemColor(SWT.COLOR_WHITE);
		bibleText.setStyleRange(style);
	}

}
