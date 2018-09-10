package com.lory.biblereader.parts.middlestack.textpart.eventhandler;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;

import com.lory.biblereader.parts.middlestack.textpart.JavaScriptCreator;
import com.lory.biblereader.parts.middlestack.textpart.TextPartManager;

@Creatable
public class BrowserMouseListener extends MouseAdapter {

	private final TextPartManager textPartManager;

	@Inject
	public BrowserMouseListener(TextPartManager textPartManager) {
		this.textPartManager = textPartManager;
	}

	@Override
	public void mouseDown(MouseEvent event) {
		if (event.button == 3) {
			String script = JavaScriptCreator.getVerseIdScript(event.x, event.y);
			String verseId = (String) ((Browser) event.getSource()).evaluate(script);
			textPartManager.setComparingVerseId(verseId);
		}
	}
}
