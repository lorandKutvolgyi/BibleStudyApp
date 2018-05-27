package com.lory.biblereader.parts.leftstack.bookspart.treeprovider;

import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.graphics.Image;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.TreeElement;

public class ViewerLabelProvider extends LabelProvider {

	private MessageService messageService;

	public ViewerLabelProvider(MessageService messageService) {
		this.messageService = messageService;
	}

	@Override
	public Image getImage(Object element) {
		return super.getImage(element);
	}

	@Override
	public String getText(Object element) {
		return messageService.getMessage(((TreeElement) element).getText());
	}
}