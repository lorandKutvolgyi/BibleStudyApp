package com.lory.biblereader.textpart.toolbar.eventhandler;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.swt.SWT;

import com.lory.biblereader.historypart.entity.History;

public class NextChapter {

	@Inject
	private static History history;
	@Inject
	private static Paging paging;

	@Execute
	public void execute() {
		paging.paging(SWT.ARROW_RIGHT, history);
	}

}