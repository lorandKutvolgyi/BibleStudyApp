package com.lory.biblereader.historypart.interfaceadapter.listener;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

import com.lory.biblereader.historypart.service.HistoryService;

@Creatable
@Singleton
public class RemoveMenuListener implements Listener {

	private HistoryService service;

	@Inject
	public RemoveMenuListener(HistoryService service) {
		this.service = service;
	}

	@Override
	public void handleEvent(Event event) {
		service.remove((int) event.widget.getData());
	}
}
