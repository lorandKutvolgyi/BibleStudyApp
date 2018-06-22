package com.lory.biblereader.parts.upperrightstack.bookmarkpart.eventhandler;

import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;

import com.lory.biblereader.parts.upperrightstack.bookmarkpart.BookMarkSelectionPopup;

public class CancelButtonSelectionListener implements SelectionListener {

	private BookMarkSelectionPopup popup;

	public CancelButtonSelectionListener(BookMarkSelectionPopup popup) {
		this.popup = popup;
	}

	@Override
	public void widgetSelected(SelectionEvent e) {
		popup.close();
	}

	@Override
	public void widgetDefaultSelected(SelectionEvent e) {
	}
}
