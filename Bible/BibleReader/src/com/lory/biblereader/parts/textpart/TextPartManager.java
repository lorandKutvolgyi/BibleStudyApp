package com.lory.biblereader.parts.textpart;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;

import com.lory.biblereader.model.CurrentChapter;

@Creatable
@Singleton
public class TextPartManager {
	private Map<MPart, BibleTextPart> parts = new HashMap<>();
	private MPart activePart;
	private boolean forcedActivate;

	public void registerPart(MPart part, BibleTextPart obj) {
		parts.put(part, obj);
		if (!forcedActivate) {
			activePart = part;
			CurrentChapter.setObserver(parts.get(part));
		}
	}

	public MPart getActivePart() {
		return activePart;
	}

	public void setActivePart(MPart activePart) {
		this.activePart = activePart;
		parts.get(activePart).activate();
		inactivateOtherParts();
		forcedActivate = true;
	}

	private void inactivateOtherParts() {
		for (MPart part : parts.keySet()) {
			if (!part.equals(activePart)) {
				parts.get(part).inactivate();
			}
		}
	}

	public String getHiddenPart() {
		for (MPart part : parts.keySet()) {
			if (!part.getParent().isVisible()) {
				part.getParent().setVisible(true);
				return part.getElementId();
			}
		}
		return activePart.getElementId();
	}

}
