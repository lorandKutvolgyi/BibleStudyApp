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
	@Inject
	private EModelService modelService;
	@Inject
	private MApplication application;

	public void registerPart(MPart part, BibleTextPart obj) {
		parts.put(part, obj);
		if (!forcedActivation) {
			activatePart(part);
		}
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

	public boolean isRegistered(MPart part) {
		return parts.containsKey(part);
	}

	public MPart newTextPart() {
		MPart part = MBasicFactory.INSTANCE.createPart();
		part.setCloseable(true);
		part.setElementId(String.valueOf(PartIdProvider.getPartId()));
		part.setContributionURI("bundleclass://reader/com.lory.biblereader.parts.textpart.BibleTextPart");
		List<MPartStack> stacks = modelService.findElements(application, null, MPartStack.class, null);
		stacks.get(1).getChildren().add(part);// TODO remove magic number
		return part;
	}
}
