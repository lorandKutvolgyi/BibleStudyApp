
package com.lory.biblereader.parts.middlestack.textpart.eventhandler;

import java.util.Map;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.CanExecute;
import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Display;

import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.parts.middlestack.textpart.TextPartManager;

public class ComparingContextMenu {

	@Inject
	private TextPartManager textPartManager;

	@Execute
	public void execute() {
		Point cursorLocation = Display.getCurrent().getCursorLocation();
		Point relativeCursorLocation = Display.getCurrent().getFocusControl().toControl(cursorLocation);
		System.out.println(textPartManager.getActivePart().getLabel());
		System.out.println(relativeCursorLocation);
	}

	@CanExecute
	public boolean canExecute() {
		MPart activePart = textPartManager.getActivePart();
		Map<MPart, Chapter> chapters = textPartManager.getChapters();
		return activePart != null && chapters.get(activePart) != null;
	}

}