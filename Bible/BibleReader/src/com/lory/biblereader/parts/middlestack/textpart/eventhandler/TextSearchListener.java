package com.lory.biblereader.parts.middlestack.textpart.eventhandler;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.widgets.Text;

@Creatable
public class TextSearchListener implements ModifyListener {

	private Browser browser;

	public void setBrowser(Browser browser) {
		this.browser = browser;
	}

	@Override
	public void modifyText(ModifyEvent e) {
		String text = ((String) browser.getData());
		text = clearStyle(text);
		String searchText = ((Text) e.getSource()).getText().toLowerCase();
		if (searchText.length() < 2) {
			return;
		}
		searchText = String.join("[\\p{C}0-9 ]+", searchText.split("[ ]+")).replaceAll("([.?()])", "\\\\$1");
		String innerHtml = highlight(text, searchText);
		browser.setData(innerHtml);
		browser.setText(innerHtml);
	}

	private String highlight(String text, String searchText) {
		String innerHtml = text;
		int index = getIndex(text, searchText);
		if (index >= 0) {
			innerHtml = text.substring(0, index) + "<mark>" + text.substring(index, index + searchText.length())
					+ "</mark>" + highlight(text.substring(index + searchText.length()), searchText);
		}
		return innerHtml;
	}

	private int getIndex(String text, String searchText) {
		Matcher matcher = Pattern.compile("((>[^<]*)|(^[^><]*))" + searchText).matcher(text.toLowerCase());
		if (matcher.find()) {
			return text.toLowerCase().indexOf(searchText, matcher.start());
		}
		return -1;
	}

	private String clearStyle(String text) {
		String clearedText = text.replaceAll("<mark>", "").replaceAll("</mark>", "");
		browser.setData(clearedText);
		browser.setText(clearedText);
		return clearedText;
	}
}
