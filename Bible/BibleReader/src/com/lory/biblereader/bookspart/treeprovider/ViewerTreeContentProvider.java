package com.lory.biblereader.bookspart.treeprovider;

import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.Viewer;

import com.lory.biblereader.base.translation.model.TreeElement;
import com.lory.biblereader.bookspart.Testament;

public class ViewerTreeContentProvider implements ITreeContentProvider {

	@Override
	public void dispose() {
	}

	@Override
	public Object[] getChildren(Object parentElement) {
		return ((TreeElement) parentElement).getChildren().toArray();
	}

	@Override
	public Object[] getElements(Object inputElement) {
		return new Object[] { Testament.OLD_TESTAMENT, Testament.NEW_TESTAMENT };
	}

	@Override
	public Object getParent(Object element) {
		return ((TreeElement) element).getParent();
	}

	@Override
	public boolean hasChildren(Object element) {
		return !((TreeElement) element).getChildren().isEmpty();
	}

	@Override
	public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
	}

}