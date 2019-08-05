package com.lory.biblereader.bookmarkpart.eventhandler;

import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;

import com.lory.biblereader.bookmarkpart.BookMarkSelectionPopup;

public class CancelButtonSelectionListener extends SelectionAdapter {

	private BookMarkSelectionPopup popup;

	public CancelButtonSelectionListener(BookMarkSelectionPopup popup) {
		this.popup = popup;
	}

	@Override
	public void widgetSelected(SelectionEvent e) {
		popup.close();
	}
}
