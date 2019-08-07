
package com.lory.biblereader.notespart;

import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.nebula.widgets.richtext.RichTextEditor;
import org.eclipse.nebula.widgets.richtext.RichTextEditorConfiguration;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.base.translation.model.Chapter;
import com.lory.biblereader.base.translation.model.CurrentChapter;
import com.lory.biblereader.base.translation.model.dao.BibleDao;

public class NotesPart implements Observer {

	@Inject
	private MessageService messageService;

	@Inject
	private CurrentChapter currentChapter;

	@Inject
	private BibleDao dao;

	private RichTextEditor editor;

	@PostConstruct
	public void postConstruct(Composite parent) {
		parent.setLayout(new GridLayout(1, false));
		RichTextEditorConfiguration config = new RichTextEditorConfiguration();
		config.setToolbarCollapsible(true);
		config.setToolbarInitialExpanded(false);
		editor = new RichTextEditor(parent, config);
		currentChapter.addObserver(this);
		editor.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true));
		Button button = new Button(parent, SWT.PUSH);
		button.setLayoutData(new GridData(SWT.LEFT, SWT.BOTTOM, true, false));
		button.setText(messageService.getMessage("save"));
		button.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				if (currentChapter.getChapter() != null && editor.getData() != null) {
					dao.saveUserNote(currentChapter.getChapter().getBook().getTitle(),
							currentChapter.getChapter().getId(), editor.getData().toString());
				}
			}
		});
	}

	@Override
	public void update(Observable o, Object arg) {
		Chapter chapter = currentChapter.getChapter();
		if (chapter != null) {
			String userNote = dao.getUserNote(chapter);
//			editor.setData(chapter != null ? dao.getUserNote(chapter) : "");
			if (!userNote.isEmpty()) {
				editor.setText(userNote);
				editor.setData(userNote);
			} else {
				if (!("".equals(editor.getData()))) {
					editor.setText("");
					editor.setData("");
				}
			}
		}
	}
}