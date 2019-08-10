package com.lory.biblereader.historypart.interfaceadapter.listener;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

@Creatable
@Singleton
public class ListenerFactory {

	private LinkListener linkListener;
	private ScrolledCompositeResizeListener resizeListener;
	private AddToBookMarkMenuListener addToBookMarkMenuListener;
	private RemoveMenuListener removeMenuListener;

	@Inject
	public ListenerFactory(LinkListener linkListener, ScrolledCompositeResizeListener resizeListener,
			AddToBookMarkMenuListener addToBookMarkMenuListener, RemoveMenuListener removeMenuListener) {
		this.linkListener = linkListener;
		this.resizeListener = resizeListener;
		this.addToBookMarkMenuListener = addToBookMarkMenuListener;
		this.removeMenuListener = removeMenuListener;
	}

	public LinkListener getLinkListener() {
		return linkListener;
	}

	public ScrolledCompositeResizeListener getResizeListener() {
		return resizeListener;
	}

	public AddToBookMarkMenuListener getAddToBookMarkMenuListener() {
		return addToBookMarkMenuListener;
	}

	public RemoveMenuListener getRemoveMenuListener() {
		return removeMenuListener;
	}
}
