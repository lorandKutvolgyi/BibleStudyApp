package com.lory.biblereader.historypart.interfaceadapter.presenter;

import java.util.LinkedList;
import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.base.translation.model.Chapter;
import com.lory.biblereader.historypart.entity.History;
import com.lory.biblereader.historypart.service.HistoryService;

@Creatable
@Singleton
public class HistoryPresenter implements Observer {

	private History history;
	private HistoryViewModel model;
	private HistoryService service;

	@Inject
	public HistoryPresenter(History history, HistoryViewModel model, MessageService messageService,
			HistoryService service) {
		this.history = history;
		this.model = model;
		this.service = service;
	}

	@PostConstruct
	public void init() {
		history.addObserver(this);
	}

	@Override
	public void update(Observable o, Object arg) {
		model.setChangeHappened();
	}

	public void scrolledCompositeResized() {
		model.setScrollSetupNeeded();
	}

	public void showNewTab() {
		model.setShowingNewTabNeeded();
	}

	public LinkedList<Chapter> getHistory() {
		return service.getHistory();
	}
}
