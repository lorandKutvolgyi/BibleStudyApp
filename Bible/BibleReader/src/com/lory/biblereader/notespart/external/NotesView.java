package com.lory.biblereader.notespart.external;

import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.nebula.widgets.richtext.RichTextEditor;
import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;

import com.lory.biblereader.notespart.interfaceadapter.ChangeNotesListener;
import com.lory.biblereader.notespart.interfaceadapter.ChangeType;
import com.lory.biblereader.notespart.interfaceadapter.NotesPresenter;
import com.lory.biblereader.notespart.interfaceadapter.NotesViewModel;
import com.lory.biblereader.notespart.interfaceadapter.SaveNotesListener;

public class NotesView implements Observer {

	private NotesViewModel model;
	private RichTextEditor editor;
	private SaveNotesListener saveNotesListener;
	private ChangeNotesListener changeNotesListener;

	@Inject
	public NotesView(NotesViewModel model, NotesPresenter presenter, SaveNotesListener saveNotesListener,
			ChangeNotesListener changeNotesListener) {
		this.model = model;
		this.saveNotesListener = saveNotesListener;
		this.changeNotesListener = changeNotesListener;
	}

	@PostConstruct
	public void postConstruct(Composite parent) {
		parent.setLayout(new GridLayout(1, false));
		createEditor(parent);
		createButton(parent);

		model.addObserver(this);
	}

	private void createEditor(Composite parent) {
		editor = new RichTextEditor(parent);
		editor.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true));
		editor.addModifyListener(changeNotesListener);
	}

	private void createButton(Composite parent) {
		Button button = new Button(parent, SWT.PUSH);
		button.setLayoutData(new GridData(SWT.LEFT, SWT.BOTTOM, true, false));
		button.setText(model.getSaveButtonText());
		button.addSelectionListener(saveNotesListener);
	}

	@Override
	public void update(Observable o, Object arg) {
		if (arg == ChangeType.CURRENT_CHAPTER_CHANGED) {
			String userNote = model.getSavedUserNote();
			if (!userNote.isEmpty()) {
				editor.setText(userNote);
				editor.setData(userNote);
			} else {
				if (!("".equals(editor.getData()))) {
					editor.setText("");
					editor.setData("");
				}
			}
		} else if (arg == ChangeType.NOTES_CHANGED) {
			editor.setData(editor.getText());
			model.setCurrentUserNote(editor.getText());
		}
	}
}