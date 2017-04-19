package com.lory.biblereader.parts.textpart;

import java.util.Map;
import java.util.TreeMap;

import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;

@Creatable
@Singleton
public class TextPartManager {
	private Map<MPart, BibleTextPart> parts = new TreeMap<>(
			(part1, part2) -> part1.getElementId().compareTo(part2.getElementId()));
	private MPart activePart;
	private boolean forcedActivation;

	public void registerPart(MPart part, BibleTextPart obj) {
		parts.put(part, obj);
		if (!forcedActivation && part.getParent().isVisible()) {
			activatePart(part);
		}
	}

	public MPart getActivePart() {
		return activePart;
	}

	public void setActivePart(MPart activePart) {
		forcedActivation = true;
		activatePart(activePart);
	}

	private void activatePart(MPart activePart) {
		this.activePart = activePart;
		parts.get(activePart).activate();
		inactivateOtherParts();
	}

	private void inactivateOtherParts() {
		for (MPart part : parts.keySet()) {
			if (!part.equals(activePart)) {
				parts.get(part).inactivate();
			}
		}
	}

	// TODO schould be next
	public String getNextHiddenPart() {
		for (MPart part : parts.keySet()) {
			if (!part.getParent().isVisible()) {
				part.getParent().setVisible(true);
				return part.getElementId();
			}
		}
		return activePart.getElementId();
	}

	public void setNextPartToActive() {
		for (MPart part : parts.keySet()) {
			if (part.getParent().isVisible()) {
				activatePart(part);
				return;
			}
		}
	}

}
