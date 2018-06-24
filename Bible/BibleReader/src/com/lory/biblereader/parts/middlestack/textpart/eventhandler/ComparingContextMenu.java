
package com.lory.biblereader.parts.middlestack.textpart.eventhandler;

import java.util.Map;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.CanExecute;
import org.eclipse.e4.core.di.annotations.Execute;
import org.eclipse.e4.ui.model.application.ui.basic.MPart;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.dao.BibleDao;
import com.lory.biblereader.parts.middlestack.textpart.TextPartManager;
import com.lory.biblereader.service.DisplayService;

public class ComparingContextMenu {

	@Inject
	private TextPartManager textPartManager;
	@Inject
	private TranslationManager translationManager;
	@Inject
	private MessageService messageService;
	@Inject
	private DisplayService displayService;
	@Inject
	private BibleDao bibleDao;

	@Execute
	public void execute() {
		String verse = textPartManager.getComparingVerseId();
		MPart activePart = textPartManager.getActivePart();
		Map<MPart, Chapter> chapters = textPartManager.getChapters();
		Chapter chapter = chapters.get(activePart);
		CompareTranslationsPopup popup = new CompareTranslationsPopup(chapter, verse, translationManager,
				messageService, displayService, bibleDao);
		popup.open();
	}

	@CanExecute
	public boolean canExecute() {
		MPart activePart = textPartManager.getActivePart();
		Map<MPart, Chapter> chapters = textPartManager.getChapters();
		return activePart != null && chapters.get(activePart) != null && textPartManager.getComparingVerseId() != null;
	}

}