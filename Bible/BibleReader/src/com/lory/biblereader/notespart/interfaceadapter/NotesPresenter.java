package com.lory.biblereader.notespart.interfaceadapter;

import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.base.translation.model.Chapter;
import com.lory.biblereader.base.translation.model.CurrentChapter;
import com.lory.biblereader.notespart.service.NotesService;

@Creatable
@Singleton
public class NotesPresenter implements Observer {

	private CurrentChapter currentChapter;
	private MessageService messageService;
	private NotesViewModel model;
	private NotesService service;

	@Inject
	public NotesPresenter(CurrentChapter currentChapter, MessageService messageService, NotesViewModel model,
			NotesService service) {
		this.currentChapter = currentChapter;
		this.messageService = messageService;
		this.model = model;
		this.service = service;
	}

	@PostConstruct
	public void init() {
		model.setSaveButtonText(messageService.getMessage("save"));
		currentChapter.addObserver(this);
	}

	@Override
	public void update(Observable o, Object arg) {
		if (currentChapter.getChapter() != null) {
			fillViewModel(currentChapter.getChapter());
		}
	}

	private void fillViewModel(Chapter chapter) {
		model.setSavedUserNote(service.getUserNotes(chapter));
	}
}
