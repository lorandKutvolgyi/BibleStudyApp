package com.lory.biblereader.statisticspart.interfaceadapter;

import java.util.Map;
import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.base.translation.model.Chapter;
import com.lory.biblereader.base.translation.model.CurrentChapter;
import com.lory.biblereader.statisticspart.service.StatisticsService;

@Creatable
@Singleton
public class StatisticsPresenter implements Observer {

	private CurrentChapter currentChapter;
	private MessageService messageService;
	private StatisticsService service;
	private StatisticsViewModel model;

	@Inject
	public StatisticsPresenter(CurrentChapter currentChapter, MessageService messageService, StatisticsService service,
			StatisticsViewModel model) {
		this.currentChapter = currentChapter;
		this.messageService = messageService;
		this.service = service;
		this.model = model;
	}

	@PostConstruct
	public void init() {
		setUpLabels();
		update(null, null);
		currentChapter.addObserver(this);
	}

	private void setUpLabels() {
		model.setShortestVerseLabel(messageService.getMessage("SHORTEST_VERSE"));
		model.setLongestVerseLabel(messageService.getMessage("LONGEST_VERSE"));
		model.setNumberOfVersesLabel(messageService.getMessage("NUMBER_OF_VERSES"));
		model.setNumberOfCharactersLabel(messageService.getMessage("NUMBER_OF_CHARACTERS"));
		model.setNumberOfWordsLabel(messageService.getMessage("NUMBER_OF_WORDS"));
		model.setShortestBookByChaptersLabel(messageService.getMessage("SHORTEST_BOOK_BY_CHAPTERS"));
		model.setLongestBookByChaptersLabel(messageService.getMessage("LONGEST_BOOK_BY_CHAPTERS"));
		model.setShortestBookByCharactersLabel(messageService.getMessage("SHORTEST_BOOK_BY_CHARACTERS"));
		model.setLongestBookByCharactersLabel(messageService.getMessage("LONGEST_BOOK_BY_CHARACTERS"));
		model.setShortestChapterByVersesLabel(messageService.getMessage("SHORTEST_CHAPTER_BY_VERSES"));
		model.setLongestChapterByVersesLabel(messageService.getMessage("LONGEST_CHAPTER_BY_VERSES"));
		model.setShortestChapterByCharactersLabel(messageService.getMessage("SHORTEST_CHAPTER_BY_CHARACTERS"));
		model.setLongestChapterByCharactersLabel(messageService.getMessage("LONGEST_CHAPTER_BY_CHARACTERS"));
		model.setShortestVerseInAllBooksLabel(messageService.getMessage("SHORTEST_VERSE_IN_ALL_BOOKS"));
		model.setLongestVerseInAllBooksLabel(messageService.getMessage("LONGEST_VERSE_IN_ALL_BOOKS"));
		model.setNumberOfAllBooksLabel(messageService.getMessage("NUMBER_OF_ALL_BOOKS"));
		model.setNumberOfAllChaptersLabel(messageService.getMessage("NUMBER_OF_ALL_CHAPTERS"));
		model.setNumberOfAllVersesLabel(messageService.getMessage("NUMBER_OF_ALL_VERSES"));
		model.setNumberOfAllCharactersLabel(messageService.getMessage("NUMBER_OF_ALL_CHARACTERS"));
	}

	@Override
	public void update(Observable o, Object arg) {
		if (currentChapter.getChapter() != null) {
			fillViewModel(currentChapter.getChapter());
		}
	}

	private void fillViewModel(Chapter chapter) {
		setUpHeaders(chapter);
		setUpValues(chapter);
		model.setModelChanged();
	}

	private void setUpHeaders(Chapter chapter) {
		model.setChapter(messageService.getMessage(chapter.getBook().getTitle()) + chapter.getId());
		model.setTranslation(chapter.getTranslation());
	}

	private void setUpValues(Chapter chapter) {
		Map<String, String> statisticsByChapter = service.getStatisticsByChapter(chapter);
		model.setShortestVerse(statisticsByChapter.get("SHORTEST_VERSE"));
		model.setLongestVerse(statisticsByChapter.get("LONGEST_VERSE"));
		model.setNumberOfVerses(statisticsByChapter.get("NUMBER_OF_VERSES"));
		model.setNumberOfCharacters(statisticsByChapter.get("NUMBER_OF_CHARACTERS"));
		model.setNumberOfWords(statisticsByChapter.get("NUMBER_OF_WORDS"));

		Map<String, String> globalStatistics = service.getGlobalStatistics(chapter);
		model.setShortestBookByChapters(getStatistics(globalStatistics, "SHORTEST_BOOK_BY_CHAPTERS"));
		model.setLongestBookByChapters(getStatistics(globalStatistics, "LONGEST_BOOK_BY_CHAPTERS"));
		model.setShortestBookByCharacters(getStatistics(globalStatistics, "SHORTEST_BOOK_BY_CHARACTERS"));
		model.setLongestBookByCharacters(getStatistics(globalStatistics, "LONGEST_BOOK_BY_CHARACTERS"));
		model.setShortestChapterByVerses(getStatistics(globalStatistics, "SHORTEST_CHAPTER_BY_VERSES"));
		model.setLongestChapterByVerses(getStatistics(globalStatistics, "LONGEST_CHAPTER_BY_VERSES"));
		model.setShortestChapterByCharacters(getStatistics(globalStatistics, "SHORTEST_CHAPTER_BY_CHARACTERS"));
		model.setLongestChapterByCharacters(getStatistics(globalStatistics, "LONGEST_CHAPTER_BY_CHARACTERS"));
		model.setShortestVerseInAllBook(getStatistics(globalStatistics, "SHORTEST_VERSE"));
		model.setLongestVerseInAllBooks(getStatistics(globalStatistics, "LONGEST_VERSE"));
		model.setNumberOfAllBooks(globalStatistics.get("NUMBER_OF_ALL_BOOKS"));
		model.setNumberOfAllChapters(globalStatistics.get("NUMBER_OF_ALL_CHAPTERS"));
		model.setNumberOfAllVerses(globalStatistics.get("NUMBER_OF_ALL_VERSES"));
		model.setNumberOfAllCharacters(globalStatistics.get("NUMBER_OF_ALL_CHARACTERS"));
	}

	public String getStatistics(Map<String, String> globalStatistics, String key) {
		String[] valueParts = globalStatistics.get(key).split("\\s|:", 2);
		String translated;
		if (valueParts[0].contains(",")) {
			StringBuilder builder = new StringBuilder();
			String[] translatables = valueParts[0].split(",");
			for (String translatable : translatables) {
				builder.append(messageService.getMessage(translatable)).append(", ");
			}
			translated = builder.substring(0, builder.lastIndexOf(", "));
		} else {
			translated = messageService.getMessage(valueParts[0]);
		}
		return translated + " " + valueParts[1];
	}

}
