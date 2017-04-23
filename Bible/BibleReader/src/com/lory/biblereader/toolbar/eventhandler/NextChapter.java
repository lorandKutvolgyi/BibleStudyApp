
package com.lory.biblereader.toolbar.eventhandler;

import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.swt.SWT;

public class NextChapter {
	@Execute
	public void execute() {
		Paging.paging(SWT.ARROW_RIGHT);
	}

}