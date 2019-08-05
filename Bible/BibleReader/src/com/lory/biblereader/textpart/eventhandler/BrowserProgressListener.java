package com.lory.biblereader.textpart.eventhandler;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.ProgressAdapter;
import org.eclipse.swt.browser.ProgressEvent;

import com.lory.biblereader.textpart.JavaScriptCreator;

@Creatable
public class BrowserProgressListener extends ProgressAdapter {

	@Override
	public void completed(ProgressEvent event) {
		Browser browser = (Browser) event.getSource();
		browser.execute(JavaScriptCreator.scrollToFirstMark());
	}
}
