package com.lory.biblereader.parts.upperrightstack.bookmarkpart.eventhandler;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Text;

import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkSelectionPopup;

public class VersesComboFocusListener implements FocusListener {

	private BookMarkSelectionPopup popup;
	private Text verses;

	public VersesComboFocusListener(BookMarkSelectionPopup popup) {
		this.popup = popup;
		this.verses = popup.getVerses();
	}

	@Override
	public void focusLost(FocusEvent e) {
		String text = verses.getText();
		if (text.isEmpty()) {
			verses.setText(popup.getPlaceholderForVerses());
			verses.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
		}
	}

	@Override
	public void focusGained(FocusEvent e) {
		String text = verses.getText();
		if (text.equals(popup.getPlaceholderForVerses())) {
			verses.setText("");
		}
		verses.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_BLACK));
	}
}
