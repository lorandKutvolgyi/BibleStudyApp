package com.lory.biblereader.historypart.interfaceadapter.toolbarmenu;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Execute;

import com.lory.biblereader.historypart.entity.History;

public class HistoryClearMenuItemHandler {

	private History history;

	@Inject
	public HistoryClearMenuItemHandler(History history) {
		this.history = history;
	}

	@Execute
	public void execute() {
		history.clear();
	}
}