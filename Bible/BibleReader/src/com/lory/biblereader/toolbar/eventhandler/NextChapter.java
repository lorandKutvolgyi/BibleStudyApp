package com.lory.biblereader.toolbar.eventhandler;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.swt.SWT;

import com.lory.biblereader.parts.mapstack.History;

public class NextChapter {
	@Inject
	private static History history;

	@Execute
	public void execute() {
		Paging.paging(SWT.ARROW_RIGHT, history);
	}

}