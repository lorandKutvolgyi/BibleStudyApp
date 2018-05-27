package com.lory.biblereader.toolbar.eventhandler;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.swt.SWT;

import com.lory.biblereader.parts.upperrightstack.historypart.History;

public class PreviousChapter {
	@Inject
	private static History history;
	@Inject
	private static Paging paging;

	@Execute
	public void execute() {
		paging.paging(SWT.ARROW_LEFT, history);
	}

}