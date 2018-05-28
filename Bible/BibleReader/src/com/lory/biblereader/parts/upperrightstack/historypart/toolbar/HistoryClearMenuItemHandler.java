
package com.lory.biblereader.parts.upperrightstack.historypart.toolbar;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Execute;

import com.lory.biblereader.parts.upperrightstack.historypart.History;

public class HistoryClearMenuItemHandler {

	@Inject
	private History history;

	@Execute
	public void execute() {
		history.clear();
	}

}