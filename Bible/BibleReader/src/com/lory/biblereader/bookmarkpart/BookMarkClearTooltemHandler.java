
package com.lory.biblereader.bookmarkpart;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.swt.widgets.Shell;

public class BookMarkClearTooltemHandler {

	@Inject
	private BookMarkManager bookMarkManager;

	@Execute
	public void execute(Shell shell) {
		bookMarkManager.removeAllBookMark(shell);
	}

}