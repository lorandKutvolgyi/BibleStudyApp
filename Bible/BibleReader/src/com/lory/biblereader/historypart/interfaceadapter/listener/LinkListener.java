package com.lory.biblereader.historypart.interfaceadapter.listener;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.ui.forms.events.HyperlinkAdapter;
import org.eclipse.ui.forms.events.HyperlinkEvent;

import com.lory.biblereader.base.translation.model.Chapter;
import com.lory.biblereader.historypart.interfaceadapter.presenter.HistoryPresenter;
import com.lory.biblereader.historypart.service.HistoryService;
import com.lory.biblereader.textpart.TextPartManager;

@Creatable
@Singleton
public class LinkListener extends HyperlinkAdapter {

	private TextPartManager textPartManager;
	private HistoryService service;
	private HistoryPresenter presenter;

	@Inject
	public LinkListener(TextPartManager textPartManager, HistoryService service, HistoryPresenter presenter) {
		this.textPartManager = textPartManager;
		this.service = service;
		this.presenter = presenter;
	}

	@Override
	public void linkActivated(HyperlinkEvent event) {
		if (isNewTabNeeded(event)) {
			presenter.showNewTab();
		}
		service.setCurrentChapter(getChapter(event));
	}

	private boolean isNewTabNeeded(HyperlinkEvent event) {
		return isCtrlPushed(event) || (!textPartManager.isAnyActivePart() && !textPartManager.isAnyVisiblePart());
	}

	private boolean isCtrlPushed(HyperlinkEvent event) {
		return event.getStateMask() == 786432;
	}

	private Chapter getChapter(HyperlinkEvent event) {
		return (Chapter) event.widget.getData("chapter");
	}
}
