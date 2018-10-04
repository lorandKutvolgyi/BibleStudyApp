package com.lory.biblereader.parts.middlestack.textpart;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
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
import org.eclipse.swt.widgets.Text;

import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.ChapterContext;
import com.lory.biblereader.model.CurrentChapter;
import com.lory.biblereader.model.dao.BibleDao;

@Creatable
@Singleton
public class TextPartManager {

	@Inject
	private CurrentChapter currentChapter;
	@Inject
	private static EPartService partService;
	@Inject
	private static EModelService modelService;
	@Inject
	private static MApplication application;
	@Inject
	private TranslationManager translationManager;
	@Inject
	private BibleDao bibleDao;

	private static final String STACK_ID = "biblereader.partstack.bibletext";
	private static final String BIBLE_TEXT_PART_URI = "bundleclass://reader/com.lory.biblereader.parts.middlestack.textpart.BibleTextPart";
	private static long partId = 1;
	private WeakHashMap<MPart, BibleTextPart> parts;
	private WeakHashMap<MPart, Chapter> chapters;
	private MPart activePart;
	private MPartStack stack;
	private String comparingVerseId;

	public TextPartManager() {
		parts = new WeakHashMap<>();
		chapters = new WeakHashMap<>();
	}

	public synchronized void registerPart(MPart part, BibleTextPart bibleTextPart, ChapterContext chapter) {
		parts.put(part, bibleTextPart);
		if (chapter != null) {
			registerPartWithGivenContent(part, chapter.getBookTitle(), chapter.getId(), chapter.getTranslation());
		} else {
			registerPartWithCurrentChapterContent(part);
		}
	}

	public synchronized void removePart(MPart part) {
		if (part.equals(activePart)) {
			activePart = null;
		}
		currentChapter.removeObserver(parts.get(part));
		parts.remove(part);
		chapters.remove(part);
	}

	public synchronized void activatePart(MPart newActivePart) {
		activePart = newActivePart;
		currentChapter.setObserver(parts.get(newActivePart));
		inactivateOtherParts();
		setStack(activePart.getParent().getElementId());
		partService.showPart(newActivePart, PartState.VISIBLE);
		if (chapters.get(newActivePart) != null) {
			currentChapter.setChapter(chapters.get(newActivePart));
		}
	}

	public synchronized void activateAnyVisiblePart() {
		activatePart(getAnyVisiblePart());
	}

	public synchronized void loadCurrentChapter(MPart part) {
		if (currentChapter.getChapter() != null && !(currentChapter.getChapter().equals(chapters.get(part))
				&& !parts.get(part).getBrowser().getText().equals(""))) {
			loadTextIntoBibleTextPart(part, currentChapter.getChapter());
			chapters.put(part, currentChapter.getChapter());
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

	private MPart getAnyVisiblePart() {
		return parts.keySet().stream().filter((mPart) -> mPart.isToBeRendered()).findAny().get();
	}

	public synchronized MPart getAnyVisiblePartExcept(MPart currentPart) {
		return parts.keySet().stream().filter((mPart) -> mPart.isToBeRendered() && !mPart.equals(currentPart)).findAny()
				.get();
	}

	public synchronized MPart getActivePart() {
		return activePart;
	}

	public synchronized MPart createNewTextPart(EModelService modelService, MApplication application) {
		MPart part = createNewPart();
		List<MPartStack> stacks = findBibleTextPartStack(modelService, application);
		addPartToStack(part, stacks);
		return part;
	}

	public synchronized void modifyPartContent(Book book, int chapterId) {
		Chapter chapter = book.getChapter(chapterId, null, translationManager, bibleDao);
		currentChapter.setChapter(chapter);
		chapters.put(activePart, chapter);
	}

	public synchronized Map<MPart, Chapter> getChapters() {
		return chapters;
	}

	public String getComparingVerseId() {
		return comparingVerseId;
	}

	public void setComparingVerseId(String comparingVerseId) {
		this.comparingVerseId = comparingVerseId;
	}

	private void registerPartWithGivenContent(MPart part, String bookTitle, String chapterId, String translation) {
		activatePart(part);
		currentChapter.setChapter(bookTitle, Integer.parseInt(chapterId), translation);
		chapters.put(part, currentChapter.getChapter());
	}

	private void registerPartWithCurrentChapterContent(MPart part) {
		chapters.put(part, currentChapter.getChapter());
		activatePart(part);
	}

	private void inactivateOtherParts() {
		for (MPart part : parts.keySet()) {
			if (!part.equals(activePart)) {
				currentChapter.removeObserver(parts.get(part));
			}
		}
	}

	private void setStack(String stackId) {
		stack = modelService.findElements(application, stackId, MPartStack.class, null).get(0);
	}

	private void loadTextIntoBibleTextPart(MPart part, Chapter currentChapter) {
		BibleTextPart bibleTextPart = parts.get(part);
		bibleTextPart.setContent(currentChapter.getText());
		Text searchtext = bibleTextPart.getSearchtext();
		String text = searchtext.getText();
		searchtext.setText(text);
		bibleTextPart.refreshTitle(currentChapter.getBook().getTitle(), currentChapter.getId());
		if (currentChapter.getTranslation() == null) {
			currentChapter.setTranslation(translationManager.getActiveTranslationAbbreviation());
		}
		bibleTextPart.showTranslation(currentChapter);
	}

	private MPart createNewPart() {
		MPart part = MBasicFactory.INSTANCE.createPart();
		part.setContributionURI(BIBLE_TEXT_PART_URI);
		part.setElementId(createUniqueElementId());
		part.setCloseable(true);
		return part;
	}

	private void addPartToStack(MPart part, List<MPartStack> stacks) {
		if (stacks.isEmpty()) {
			stack.getChildren().add(part);
		} else {
			stacks.get(0).setVisible(true);
			stacks.get(0).getChildren().add(part);
		}
	}

	private List<MPartStack> findBibleTextPartStack(EModelService modelService, MApplication application) {
		return modelService.findElements(application, STACK_ID, MPartStack.class, null);
	}

	private String createUniqueElementId() {
		String result = String.valueOf(getPartId());
		Set<String> ids = parts.keySet().stream().map(part -> part.getElementId()).collect(Collectors.toSet());
		while (ids.contains(result)) {
			result = String.valueOf(getPartId());
		}
		return result;
	}

	private static long getPartId() {
		return partId++;
	}

}
