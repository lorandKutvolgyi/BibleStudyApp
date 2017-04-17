
package com.lory.biblereader.toolbar.eventhandler;

import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.swt.SWT;

import com.lory.biblereader.common.Paging;

public class PreviousChapter {
	@Execute
	public void execute() {
		Paging.paging(SWT.ARROW_LEFT);
	}

}