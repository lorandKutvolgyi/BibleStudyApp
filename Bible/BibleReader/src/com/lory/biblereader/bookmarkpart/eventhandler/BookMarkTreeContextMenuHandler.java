package com.lory.biblereader.bookmarkpart.eventhandler;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.viewers.ITreeSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.widgets.Menu;

import com.lory.biblereader.base.translation.model.TreeElement;
import com.lory.biblereader.bookmarkpart.BookMarkManager;

@Singleton
@Creatable
public class BookMarkTreeContextMenuHandler {
	private TreeViewer viewer;

	@Inject
	private BookMarkManager bookMarkManager;

	public void createContextMenu(TreeViewer viewer) {
		this.viewer = viewer;
		MenuManager contextMenu = new MenuManager("#ViewerMenu");
		contextMenu.setRemoveAllWhenShown(true);
		contextMenu.addMenuListener(menu -> fillContextMenu(menu));

		Menu menu = contextMenu.createContextMenu(viewer.getControl());
		viewer.getControl().setMenu(menu);
	}

	private void fillContextMenu(IMenuManager contextMenu) {

		contextMenu.add(new Action("Töröl") {
			@Override
			public void run() {
				ITreeSelection selection = (ITreeSelection) viewer.getSelection();
				bookMarkManager.removeBookMark((TreeElement) selection.getFirstElement());
			}
		});
	}

}
