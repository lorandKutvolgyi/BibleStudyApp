package com.lory.biblereader.historypart.interfaceadapter.presenter;

import java.util.Observable;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.textpart.Chapter;

@Creatable
@Singleton
public class HistoryViewModel extends Observable {

	private MessageService messageService;

	@Inject
	public HistoryViewModel(MessageService messageService) {
		this.messageService = messageService;
	}

	public void setScrollSetupNeeded() {
		setChanged();
		notifyObservers(ChangeType.SCROLL_SETUP_NEEDED);
	}

	public void setChangeHappened() {
		setChanged();
		notifyObservers(ChangeType.HISTORY_CHANGED);
	}

	public void setShowingNewTabNeeded() {
		setChanged();
		notifyObservers(ChangeType.SHOWING_NEW_TAB_NEEDED);
	}

	public String getLinkText(Chapter chapter) {
		return messageService.getMessage(chapter.getBook().getTitle()) + "-" + chapter.getId();
	}

	public String getRemoveMenuText() {
		return messageService.getMessage("remove");
	}

	public String getAddToBookmarkMenuText() {
		return messageService.getMessage("newBookMark");
	}
}
