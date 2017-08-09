
package com.lory.biblereader.parts.mapstack;

import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.RowLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.ui.forms.events.HyperlinkAdapter;
import org.eclipse.ui.forms.events.HyperlinkEvent;
import org.eclipse.ui.forms.widgets.Hyperlink;

import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.CurrentChapter;

public class HistoryPart implements Observer {
	@Inject
	private History history;

	private ScrolledComposite scrolled;
	private Composite parent;
	private Composite comp;

	@PostConstruct
	public void postConstruct(Composite parent) {
		this.parent = parent;
		parent.setLayout(new FillLayout());
		scrolled = new ScrolledComposite(parent, SWT.V_SCROLL);
		scrolled.setAlwaysShowScrollBars(false);
		scrolled.setExpandVertical(true);
		scrolled.setExpandHorizontal(true);
		scrolled.setLayout(new FillLayout());
		scrolled.addControlListener(new ControlAdapter() {
			@Override
			public void controlResized(ControlEvent e) {
				scrolled.setMinSize(parent.computeSize(scrolled.getClientArea().width, SWT.DEFAULT));
			}
		});

		comp = new Composite(scrolled, SWT.NONE);
		comp.setLayout(new RowLayout());
		scrolled.setContent(comp);
		history.addObserver(this);
	}

	@Override
	public void update(Observable o, Object arg) {
		if (comp.getChildren().length != 0) {
			Label label = new Label(comp, SWT.NONE);
			label.setText(" -> ");
		}
		Hyperlink link = new Hyperlink(comp, SWT.NONE);
		link.setBackground(comp.getBackground());
		Chapter currentChapter = history.getHistory().getLast();
		link.setText(currentChapter.getBook().getTitle() + "-" + currentChapter.getId());
		link.addHyperlinkListener(new HyperlinkAdapter() {

			@Override
			public void linkActivated(HyperlinkEvent e) {
				CurrentChapter.setCurrentChapter(currentChapter);
			}
		});
		scrolled.setMinSize(parent.computeSize(scrolled.getClientArea().width, SWT.DEFAULT));
		comp.layout();
	}

}