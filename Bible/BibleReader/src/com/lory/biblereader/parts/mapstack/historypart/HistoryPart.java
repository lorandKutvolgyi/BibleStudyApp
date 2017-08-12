
package com.lory.biblereader.parts.mapstack.historypart;

import java.util.Arrays;
import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.RowLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.forms.events.HyperlinkAdapter;
import org.eclipse.ui.forms.events.HyperlinkEvent;
import org.eclipse.ui.forms.widgets.Hyperlink;

import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.CurrentChapter;

public class HistoryPart implements Observer {
	@Inject
	private History history;

	private Composite parent;
	private ScrolledComposite scrolled;
	private Composite subComposite;

	@PostConstruct
	public void postConstruct(Composite parent) {
		this.parent = parent;
		this.parent.setLayout(new FillLayout());

		createScrolledComposite();
		createSubComposite();

		scrolled.setContent(subComposite);
		history.addObserver(this);
	}

	private void createScrolledComposite() {
		scrolled = new ScrolledComposite(parent, SWT.V_SCROLL);
		scrolled.setAlwaysShowScrollBars(false);
		scrolled.setExpandVertical(true);
		scrolled.setExpandHorizontal(true);
		scrolled.setLayout(new FillLayout());
		scrolled.addControlListener(new ControlAdapter() {

			@Override
			public void controlResized(ControlEvent e) {
				setupScroll();
			}
		});
	}

	private void createSubComposite() {
		subComposite = new Composite(scrolled, SWT.NONE);
		subComposite.setLayout(new RowLayout());
	}

	@Override
	public void update(Observable o, Object arg) {
		if (isClearHappened()) {
			disposeAll();
			return;
		}
		assert (isAddHappened());
		addNewElement();
	}

	private boolean isClearHappened() {
		return history.getHistory().isEmpty();
	}

	private void disposeAll() {
		if (!isHistoryEmpty()) {
			Arrays.asList(subComposite.getChildren()).stream().forEach(control -> control.dispose());
			scrolled.setMinSize(null);
		}
	}

	private boolean isHistoryEmpty() {
		return subComposite.getChildren().length == 0;
	}

	private boolean isAddHappened() {
		return !isClearHappened();
	}

	private void addNewElement() {
		createArrowLabel();
		createLink();
		setupScroll();
		showElements();
	}

	private void createArrowLabel() {
		if (isFirstElement()) {
			Label label = new Label(subComposite, SWT.NONE);
			label.setText(" -> ");
		}
	}

	private boolean isFirstElement() {
		return !isHistoryEmpty();
	}

	private void createLink() {
		Hyperlink link = new Hyperlink(subComposite, SWT.NONE);
		link.setBackground(subComposite.getBackground());
		Chapter currentChapter = history.getHistory().getLast();
		link.setText(currentChapter.getBook().getTitle() + "-" + currentChapter.getId());
		link.addHyperlinkListener(new HyperlinkAdapter() {

			@Override
			public void linkActivated(HyperlinkEvent e) {
				CurrentChapter.setCurrentChapter(currentChapter);
			}
		});
		link.addMouseListener(new MouseAdapter() {

			@Override
			public void mouseDown(MouseEvent e) {
				if (e.button == 3) {
					Menu menu = new Menu(link);
					MenuItem item = new MenuItem(menu, SWT.PUSH);
					item.setText("REMOVE");
					item.addListener(SWT.Selection, event -> {
						int linkIndex = getLinkIndex(link);
						if (linkIndex != subComposite.getChildren().length - 1) {
							subComposite.getChildren()[linkIndex + 1].dispose();
						} else if (subComposite.getChildren().length != 1) {
							subComposite.getChildren()[linkIndex - 1].dispose();
						}
						history.removeElement(linkIndex / 2);
						link.dispose();
						subComposite.layout();
						setupScroll();
					});
					link.setMenu(menu);
				}
			}

		});
	}

	private int getLinkIndex(Control link) {
		return Arrays.asList(subComposite.getChildren()).stream().filter(comtrol -> link.equals(comtrol))
				.mapToInt(control -> Arrays.asList(subComposite.getChildren()).indexOf(control)).findFirst().getAsInt();
	}

	private void setupScroll() {
		scrolled.setMinSize(parent.computeSize(scrolled.getClientArea().width, SWT.DEFAULT));
	}

	private void showElements() {
		subComposite.layout();
	}

}