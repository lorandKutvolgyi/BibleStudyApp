package com.lory.biblereader.parts.textpart;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.eclipse.e4.ui.model.application.MApplication;
import org.eclipse.e4.ui.model.application.ui.basic.MBasicFactory;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.e4.ui.model.application.ui.basic.MPartStack;
import org.eclipse.e4.ui.workbench.modeling.EModelService;

public class TextPartManager {
	private static Map<MPart, BibleTextPart> parts = new TreeMap<>(
			(part1, part2) -> part1.getElementId().compareTo(part2.getElementId()));
	private static MPart activePart;
	private static boolean forcedActivation;

	public static void registerPart(MPart part, BibleTextPart obj) {
		parts.put(part, obj);
		if (!forcedActivation) {
			activatePart(part);
		}
	}

	public static void setActivePart(MPart activePart) {
		forcedActivation = true;
		activatePart(activePart);
	}

	private static void activatePart(MPart newActivePart) {
		activePart = newActivePart;
		parts.get(activePart).activate();
		inactivateOtherParts();
	}

	private static void inactivateOtherParts() {
		for (MPart part : parts.keySet()) {
			if (!part.equals(activePart)) {
				parts.get(part).inactivate();
			}
		}
	}

	public static boolean isRegistered(MPart part) {
		return parts.containsKey(part);
	}

	public static MPart newTextPart(EModelService modelService, MApplication application) {
		MPart part = MBasicFactory.INSTANCE.createPart();
		part.setCloseable(true);
		part.setElementId(String.valueOf(PartIdProvider.getPartId()));
		part.setContributionURI("bundleclass://reader/com.lory.biblereader.parts.textpart.BibleTextPart");
		List<MPartStack> stacks = modelService.findElements(application, "biblereader.partstack.bibletext",
				MPartStack.class, null);
		stacks.get(0).getChildren().add(part);
		return part;
	}
}
