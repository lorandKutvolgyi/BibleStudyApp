package com.lory.biblereader.bookmarkpart.treeprovider;

import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.graphics.Image;

import com.lory.biblereader.base.translation.model.TreeElement;

public class BookMarkLabelProvider extends LabelProvider {

	@Override
	public Image getImage(Object element) {
		return super.getImage(element);
	}

	@Override
	public String getText(Object element) {
		return ((TreeElement) element).getText();
	}
}