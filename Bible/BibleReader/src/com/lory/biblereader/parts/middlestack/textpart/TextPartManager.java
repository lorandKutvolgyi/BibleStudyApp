package com.lory.biblereader.parts.middlestack.textpart;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.stream.Collectors;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.e4.ui.model.application.MApplication;
import org.eclipse.e4.ui.model.application.ui.basic.MBasicFactory;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;
import org.eclipse.e4.ui.model.application.ui.basic.MPartStack;
import org.eclipse.e4.ui.workbench.modeling.EModelService;
import org.eclipse.e4.ui.workbench.modeling.EPartService;
import org.eclipse.e4.ui.workbench.modeling.EPartService.PartState;

import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.CurrentChapter;

@Creatable
@Singleton
public class TextPartManager {

	private Map<MPart, BibleTextPart> parts;
	private Map<MPart, Chapter> chapters;
	private MPart activePart;
	private MPartStack stack;

	@Inject
	private static EPartService partService;

	@Inject
	private static EModelService modelService;

	@Inject
	private static MApplication application;

	public TextPartManager() {
		parts = new TreeMap<>((part1, part2) -> part1.getElementId().compareTo(part2.getElementId()));
		chapters = new TreeMap<>((part1, part2) -> part1.getElementId().compareTo(part2.getElementId()));
	}

	public synchronized void registerPart(MPart part, BibleTextPart obj, String bookTitle, String chapterId) {
		parts.put(part, obj);
		if (bookTitle != null && chapterId != null) {
			activatePart(part);
			CurrentChapter.setCurrentChapter(bookTitle, Integer.parseInt(chapterId));
			chapters.put(part, CurrentChapter.getCurrentChapter());
		} else {
			chapters.put(part, CurrentChapter.getCurrentChapter());
			activatePart(part);
		}
	}

	public synchronized void inactivatePart(MPart part) {
		if (part.equals(activePart)) {
			activePart = null;
		}
		CurrentChapter.removeObserver(parts.get(part));
	}

	public synchronized void activatePart(MPart newActivePart) {
		activePart = newActivePart;
		CurrentChapter.setObserver(parts.get(newActivePart));
		inactivateOtherParts();
		setStack(activePart.getParent().getElementId());
		if (chapters.get(newActivePart) != null) {
			CurrentChapter.setCurrentChapter(chapters.get(newActivePart));
		}
		partService.showPart(newActivePart, PartState.ACTIVATE);
	}

	private synchronized void inactivateOtherParts() {
		for (MPart part : parts.keySet()) {
			if (!part.equals(activePart)) {
				CurrentChapter.removeObserver(parts.get(part));
			}
		}
	}

	public synchronized void loadCurrentChapter(MPart part) {
		BibleTextPart bibleTextPart = parts.get(part);
		Chapter currentChapter = CurrentChapter.getCurrentChapter();
		if (currentChapter != null) {
			bibleTextPart.setContent(currentChapter.getText());
			chapters.put(part, currentChapter);
			bibleTextPart.refreshTitle(currentChapter.getBook().getTitle(), currentChapter.getId());
		}
	}

	public synchronized boolean isAnyActivePart() {
		return parts.keySet().stream().anyMatch((mPart) -> mPart == activePart);
	}

	public synchronized boolean isAnyVisiblePart() {
		return parts.keySet().stream().anyMatch((mPart) -> mPart.isToBeRendered());
	}

	public synchronized boolean isAnyVisiblePartExcept(MPart currentPart) {
		return parts.keySet().stream().anyMatch((mPart) -> mPart.isToBeRendered() && !mPart.equals(currentPart));
	}

	public synchronized MPart getAnyVisiblePart() {
		return parts.keySet().stream().filter((mPart) -> mPart.isToBeRendered()).findAny().get();
	}

	public synchronized MPart getAnyVisiblePartExcept(MPart currentPart) {
		return parts.keySet().stream().filter((mPart) -> mPart.isToBeRendered() && !mPart.equals(currentPart)).findAny()
				.get();
	}

	public MPart getActivePart() {
		return activePart;
	}

	public synchronized MPart newTextPart(EModelService modelService, MApplication application) {
		MPart part = MBasicFactory.INSTANCE.createPart();
		part.setCloseable(true);
		part.setElementId(getElementId());
		part.setContributionURI("bundleclass://reader/com.lory.biblereader.parts.middlestack.textpart.BibleTextPart");
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

	private synchronized String getElementId() {
		String result = String.valueOf(PartIdProvider.getPartId());
		Set<String> ids = parts.keySet().stream().map(part -> part.getElementId()).collect(Collectors.toSet());
		while (ids.contains(result)) {
			result = String.valueOf(PartIdProvider.getPartId());
		}
		return result;
	}

	private synchronized void setStack(String stackId) {
		stack = modelService.findElements(application, stackId, MPartStack.class, null).get(0);
	}

	public Map<MPart, Chapter> getChapters() {
		return chapters;
	}

}
