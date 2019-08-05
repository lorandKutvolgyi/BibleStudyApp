package com.lory.biblereader.historypart.contextmenu;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Execute;

import com.lory.biblereader.historypart.History;

public class HistoryClearMenuItemHandler {

	@Inject
	private History history;

	@Execute
	public void execute() {
		history.clear();
	}

}