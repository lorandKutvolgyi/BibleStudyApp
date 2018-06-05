package com.lory.biblereader.parts.upperrightstack.bookmarkpart.listener;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Display;

import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkSelectionPopup;

public class CategoriesFocusListener implements FocusListener {

	private BookMarkSelectionPopup popup;
	private Combo categories;

	public CategoriesFocusListener(BookMarkSelectionPopup popup) {
		this.popup = popup;
		this.categories = popup.getCategories();
	}

	@Override
	public void focusLost(FocusEvent e) {
		if (categories.getText().isEmpty() && !categories.getListVisible()) {
			categories.setText(popup.getPlaceholderForCategories());
			categories.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_GRAY));
		}
	}

	@Override
	public void focusGained(FocusEvent e) {
		if (categories.getText().equals(popup.getPlaceholderForCategories())) {
			categories.setText("");
		}
		categories.setForeground(Display.getDefault().getSystemColor(SWT.COLOR_BLACK));
	}
}
