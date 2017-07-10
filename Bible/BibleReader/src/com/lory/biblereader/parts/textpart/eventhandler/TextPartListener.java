package com.lory.biblereader.parts.textpart.eventhandler;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.e4.ui.workbench.modeling.IPartListener;

import com.lory.biblereader.parts.textpart.TextPartManager;

@Creatable
@Singleton
public class TextPartListener implements IPartListener {
	@Inject
	private TextPartManager textPartManager;

	@Override
	public void partActivated(MPart part) {
		if (textPartManager.isRegistered(part)) {
			textPartManager.setActivePart(part);
		}
	}

	@Override
	public void partBroughtToTop(MPart part) {
		if (textPartManager.isRegistered(part)) {
			textPartManager.setStack(part.getParent().getElementId());
			textPartManager.setActivePart(part);
		}
	}

	@Override
	public void partDeactivated(MPart part) {
		// Do nothing
	}

	@Override
	public void partHidden(MPart part) {
		// Do nothing
	}

	@Override
	public void partVisible(MPart part) {
		// Do nothing
	}
}
