
package com.lory.biblereader.parts.bottomrightstack.notespart;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.nebula.widgets.richtext.RichTextEditor;
import org.eclipse.nebula.widgets.richtext.RichTextViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

import com.lory.biblereader.i18n.MessageService;

public class NotesPart {
	@Inject
	private MessageService messageService;

	@PostConstruct
	public void postConstruct(Composite parent) {
		parent.setLayout(new GridLayout(1, false));
		RichTextViewer text = new RichTextViewer(parent, SWT.NONE);
		text.setBackground(Display.getDefault().getSystemColor(SWT.COLOR_WHITE));
		text.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true));
		Button button = new Button(parent, SWT.PUSH);
		button.setLayoutData(new GridData(SWT.LEFT, SWT.BOTTOM, true, false));
		button.setText(messageService.getMessage("edit"));
		button.addSelectionListener(new SelectionListener() {

			@Override
			public void widgetSelected(SelectionEvent e) {
				Shell shell = new Shell(Display.getCurrent().getActiveShell());
				shell.setLayout(new GridLayout(1, false));
				RichTextEditor editor = new RichTextEditor(shell);
				editor.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true));
				editor.getEditorConfiguration().setBrowser(new Browser(shell, 0));
				Button button = new Button(shell, SWT.PUSH);
				button.setLayoutData(new GridData(SWT.LEFT, SWT.BOTTOM, true, false));
				button.setText(messageService.getMessage("save"));
				button.addSelectionListener(new SelectionListener() {

					@Override
					public void widgetSelected(SelectionEvent e) {
						text.setText(editor.getText());
						shell.close();
					}

					@Override
					public void widgetDefaultSelected(SelectionEvent e) {
					}
				});
				shell.open();
			}

			@Override
			public void widgetDefaultSelected(SelectionEvent e) {
			}
		});
	}

}