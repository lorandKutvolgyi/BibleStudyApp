package com.lory.biblereader.parts.textpart;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.ui.model.application.MApplication;
import org.eclipse.e4.ui.model.application.ui.basic.MBasicFactory;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.e4.ui.model.application.ui.basic.MPartStack;
import org.eclipse.e4.ui.workbench.modeling.EModelService;

@Creatable
@Singleton
public class TextPartManager {

	private Map<MPart, BibleTextPart> parts = new TreeMap<>(
			(part1, part2) -> part1.getElementId().compareTo(part2.getElementId()));
	private MPart activePart;
	private boolean forcedActivation;
	private MPartStack stack;

	@Inject
	private static EModelService modelService;

	@Inject
	private static MApplication application;

	public synchronized void registerPart(MPart part, BibleTextPart obj) {
		parts.put(part, obj);
		if (!forcedActivation) {
			activatePart(part);
		}
	}

	public synchronized void setActivePart(MPart activePart) {
		forcedActivation = true;
		activatePart(activePart);
	}

	public synchronized void inactivatePart(MPart part) {
		if (part.equals(activePart)) {
			activePart = null;
		}
	}

	public synchronized void activatePart(MPart newActivePart) {
		activePart = newActivePart;
		parts.get(activePart).activate();
		inactivateOtherParts();
	}

	private synchronized void inactivateOtherParts() {
		for (MPart part : parts.keySet()) {
			if (!part.equals(activePart)) {
				parts.get(part).inactivate();
			}
		}
	}

	public synchronized boolean isAnyActivePart() {
		return parts.keySet().stream().anyMatch((mPart) -> mPart == activePart);
	}

	public synchronized boolean isRegistered(MPart part) {
		return parts.containsKey(part);
	}

	public synchronized MPart newTextPart(EModelService modelService, MApplication application) {
		MPart part = MBasicFactory.INSTANCE.createPart();
		part.setCloseable(true);
		part.setElementId(String.valueOf(PartIdProvider.getPartId()));
		part.setContributionURI("bundleclass://reader/com.lory.biblereader.parts.textpart.BibleTextPart");
		List<MPartStack> stacks = modelService.findElements(application, "biblereader.partstack.bibletext",
				MPartStack.class, null);
		if (stacks.isEmpty()) {
			stack.getChildren().add(part);
		} else {
			stacks.get(0).setVisible(true);
			stacks.get(0).getChildren().add(part);
		}
		return part;
	}

	public synchronized void setStack(String stackId) {
		stack = modelService.findElements(application, stackId, MPartStack.class, null).get(0);
	}

}
