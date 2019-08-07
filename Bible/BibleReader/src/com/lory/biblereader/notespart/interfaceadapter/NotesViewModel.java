package com.lory.biblereader.notespart.interfaceadapter;

import java.util.Observable;

import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

@Creatable
@Singleton
public class NotesViewModel extends Observable {

	private String saveButtonText;
	private String savedUserNote;
	private String currentUserNote;

	public String getSaveButtonText() {
		return saveButtonText;
	}

	public void setSaveButtonText(String saveButtonText) {
		this.saveButtonText = saveButtonText;
	}

	public String getSavedUserNote() {
		return savedUserNote;
	}

	public void setSavedUserNote(String savedUserNote) {
		this.savedUserNote = savedUserNote;
		setChanged();
		notifyObservers(ChangeType.CURRENT_CHAPTER_CHANGED);
	}

	public String getCurrentUserNote() {
		return currentUserNote;
	}

	public void setCurrentUserNote(String currentUserNote) {
		this.currentUserNote = currentUserNote;
	}

	public void notesChanged() {
		setChanged();
		notifyObservers(ChangeType.NOTES_CHANGED);
	}
}
