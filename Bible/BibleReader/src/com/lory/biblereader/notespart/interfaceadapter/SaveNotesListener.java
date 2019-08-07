package com.lory.biblereader.notespart.interfaceadapter;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;

import com.lory.biblereader.notespart.service.NotesService;

@Creatable
@Singleton
public class SaveNotesListener extends SelectionAdapter {

	private NotesService service;
	private NotesViewModel model;

	@Inject
	public SaveNotesListener(NotesService service, NotesViewModel model) {
		this.service = service;
		this.model = model;
	}

	@Override
	public void widgetSelected(SelectionEvent e) {
		service.setUserNotes(model.getCurrentUserNote());
	}
}
