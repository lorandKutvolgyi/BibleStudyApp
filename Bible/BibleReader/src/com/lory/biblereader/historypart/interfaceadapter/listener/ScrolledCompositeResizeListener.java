package com.lory.biblereader.historypart.interfaceadapter.listener;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;

import com.lory.biblereader.historypart.interfaceadapter.presenter.HistoryPresenter;

@Creatable
@Singleton
public class ScrolledCompositeResizeListener extends ControlAdapter {

	private HistoryPresenter presenter;

	@Inject
	public ScrolledCompositeResizeListener(HistoryPresenter presenter) {
		this.presenter = presenter;
	}

	@Override
	public void controlResized(ControlEvent event) {
		presenter.scrolledCompositeResized();
	}
}
