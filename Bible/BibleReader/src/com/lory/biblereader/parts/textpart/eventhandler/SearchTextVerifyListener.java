package com.lory.biblereader.parts.textpart.eventhandler;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.events.VerifyListener;

@Creatable
public class SearchTextVerifyListener implements VerifyListener {

	@Override
	public void verifyText(VerifyEvent e) {
		if (e.character >= '0' && e.character <= '9') {
			e.doit = false;
		}
	}

}
