package com.lory.biblereader.parts.textpart;

import java.util.Map;
import java.util.TreeMap;

import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.ui.model.application.ui.MElementContainer;
import org.eclipse.e4.ui.model.application.ui.MUIElement;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;

@Creatable
@Singleton
public class TextPartManager {
	private Map<MPart, BibleTextPart> parts = new TreeMap<>(
			(part1, part2) -> part1.getElementId().compareTo(part2.getElementId()));
	private MPart activePart;
	private boolean forcedActivation;
	private Map<MPart, MElementContainer<MUIElement>> stacks = new TreeMap<>(
			(part1, part2) -> part1.getElementId().compareTo(part2.getElementId()));

	public void registerPart(MPart part, BibleTextPart obj) {
		stacks.put(part, part.getParent());
		parts.put(part, obj);
		if (!forcedActivation && part.getParent().isVisible()) {
			activatePart(part);
		}
		System.out.println(parts.size());
		System.out.println(stacks.size());
	}

	public MPart getActivePart() {
		return activePart;
	}

	public void setActivePart(MPart activePart) {
		forcedActivation = true;
		activatePart(activePart);
		System.out.println(parts.size());
		System.out.println(stacks.size());
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

	public String getNextHiddenPart() {
		for (MPart part : parts.keySet()) {
			if (!part.getParent().isVisible()) {
				part.getParent().setVisible(true);
				System.out.println(parts.size());
				System.out.println(stacks.size());
				return part.getElementId();
			}
		}
		if (stacks.size() < 4) {

		}
		for (MPart part : parts.keySet()) {
			if (parts.get(part).isDisposed()) {
				System.out.println("disposed: " + part.getElementId());
			}
		}
		for (MPart part : parts.keySet()) {
			if (!part.getParent().equals(stacks.get(part))) {
				part.setParent(stacks.get(part));
				return part.getElementId();
			}
		}
		return activePart.getElementId();

	}

	public void setNextPartToActive() {
		for (MPart part : parts.keySet()) {
			if (part.getParent().isVisible()) {
				activatePart(part);
				System.out.println(parts.size());
				System.out.println(stacks.size());
				return;
			}
		}
		System.out.println(parts.size());
		System.out.println(stacks.size());
	}

	public boolean isOnlyChild(MPart part) {
		return part.getParent().getChildren().size() == 1;
	}

}
