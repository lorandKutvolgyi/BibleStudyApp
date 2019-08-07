package com.lory.biblereader.notespart.interfaceadapter;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;

@Creatable
@Singleton
public class ChangeNotesListener implements ModifyListener {

	private NotesViewModel model;

	@Inject
	public ChangeNotesListener(NotesViewModel model) {
		this.model = model;
	}

	@Override
	public void modifyText(ModifyEvent e) {
		model.notesChanged();
	}
}
