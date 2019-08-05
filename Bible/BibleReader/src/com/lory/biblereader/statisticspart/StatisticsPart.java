package com.lory.biblereader.statisticspart;

import java.util.Map;
import java.util.Objects;
import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.base.translation.model.Chapter;
import com.lory.biblereader.base.translation.model.CurrentChapter;
import com.lory.biblereader.base.translation.model.dao.BibleDao;

public class StatisticsPart implements Observer {

	private CurrentChapter currentChapter;
	private BibleDao dao;
	private MessageService messageService;

	private TableItem chapterHeader;
	private TableItem item1;
	private TableItem item2;
	private TableItem item3;
	private TableItem item4;
	private TableItem item5;
	private TableItem translationHeader;
	private TableItem item6;
	private TableItem item7;
	private TableItem item8;
	private TableItem item9;
	private TableItem item10;
	private TableItem item11;
	private TableItem item12;
	private TableItem item13;
	private TableItem item14;
	private TableItem item15;
	private TableItem item16;
	private TableItem item17;
	private TableItem item18;
	private TableItem item19;

	@Inject
	public StatisticsPart(CurrentChapter currentChapter, BibleDao dao, MessageService messageService) {
		this.currentChapter = currentChapter;
		this.dao = dao;
		this.messageService = messageService;
	}

	@PostConstruct
	public void postConstruct(Composite parent) {
		Table chapterStatistics = new Table(parent, SWT.NONE);
		chapterStatistics.setHeaderVisible(false);
		TableColumn col1 = new TableColumn(chapterStatistics, SWT.LEFT);
		TableColumn col2 = new TableColumn(chapterStatistics, SWT.LEFT);
		col1.setWidth(300);
		col2.setWidth(70);
		chapterHeader = new TableItem(chapterStatistics, SWT.None);
		chapterHeader.setFont(new Font(Display.getCurrent(), new FontData("Arial", 11, SWT.BOLD)));
		item1 = new TableItem(chapterStatistics, SWT.None);
		item2 = new TableItem(chapterStatistics, SWT.None);
		item3 = new TableItem(chapterStatistics, SWT.None);
		item4 = new TableItem(chapterStatistics, SWT.None);
		item5 = new TableItem(chapterStatistics, SWT.None);

		translationHeader = new TableItem(chapterStatistics, SWT.None);
		translationHeader.setFont(new Font(Display.getCurrent(), new FontData("Arial", 11, SWT.BOLD)));
		item6 = new TableItem(chapterStatistics, SWT.None);
		item7 = new TableItem(chapterStatistics, SWT.None);
		item8 = new TableItem(chapterStatistics, SWT.None);
		item9 = new TableItem(chapterStatistics, SWT.None);
		item10 = new TableItem(chapterStatistics, SWT.None);
		item11 = new TableItem(chapterStatistics, SWT.None);
		item12 = new TableItem(chapterStatistics, SWT.None);
		item13 = new TableItem(chapterStatistics, SWT.None);
		item14 = new TableItem(chapterStatistics, SWT.None);
		item15 = new TableItem(chapterStatistics, SWT.None);
		item16 = new TableItem(chapterStatistics, SWT.None);
		item17 = new TableItem(chapterStatistics, SWT.None);
		item18 = new TableItem(chapterStatistics, SWT.None);
		item19 = new TableItem(chapterStatistics, SWT.None);

		item1.setText(0, messageService.getMessage("SHORTEST_VERSE"));
		item2.setText(0, messageService.getMessage("LONGEST_VERSE"));
		item3.setText(0, messageService.getMessage("NUMBER_OF_VERSES"));
		item4.setText(0, messageService.getMessage("NUMBER_OF_CHARACTERS"));
		item5.setText(0, messageService.getMessage("NUMBER_OF_WORDS"));
		item6.setText(0, messageService.getMessage("SHORTEST_BOOK_BY_CHAPTERS"));
		item7.setText(0, messageService.getMessage("LONGEST_BOOK_BY_CHAPTERS"));
		item8.setText(0, messageService.getMessage("SHORTEST_BOOK_BY_CHARACTERS"));
		item9.setText(0, messageService.getMessage("LONGEST_BOOK_BY_CHARACTERS"));
		item10.setText(0, messageService.getMessage("SHORTEST_CHAPTER_BY_VERSES"));
		item11.setText(0, messageService.getMessage("LONGEST_CHAPTER_BY_VERSES"));
		item12.setText(0, messageService.getMessage("SHORTEST_CHAPTER_BY_CHARACTERS"));
		item13.setText(0, messageService.getMessage("LONGEST_CHAPTER_BY_CHARACTERS"));
		item14.setText(0, messageService.getMessage("SHORTEST_VERSE_IN_ALL_BOOKS"));
		item15.setText(0, messageService.getMessage("LONGEST_VERSE_IN_ALL_BOOKS"));
		item16.setText(0, messageService.getMessage("NUMBER_OF_ALL_BOOKS"));
		item17.setText(0, messageService.getMessage("NUMBER_OF_ALL_CHAPTERS"));
		item18.setText(0, messageService.getMessage("NUMBER_OF_ALL_VERSES"));
		item19.setText(0, messageService.getMessage("NUMBER_OF_ALL_CHARACTERS"));

		currentChapter.addObserver(this);
		update(null, null);
	}

	@Override
	public void update(Observable o, Object arg) {
		Chapter chapter = currentChapter.getChapter();
		if (Objects.isNull(chapter)) {
			return;
		}
		setItems(chapter);
	}

	private void setItems(Chapter chapter) {
		chapterHeader.setText(0, messageService.getMessage(chapter.getBook().getTitle()) + chapter.getId());
		translationHeader.setText(0, chapter.getTranslation());
		Map<String, String> statisticsPerChapter = dao.getStatisticsByChapter(chapter);
		item1.setText(1, statisticsPerChapter.get("SHORTEST_VERSE"));
		item2.setText(1, statisticsPerChapter.get("LONGEST_VERSE"));
		item3.setText(1, statisticsPerChapter.get("NUMBER_OF_VERSES"));
		item4.setText(1, statisticsPerChapter.get("NUMBER_OF_CHARACTERS"));
		item5.setText(1, statisticsPerChapter.get("NUMBER_OF_WORDS"));

		Map<String, String> globalStatistics = dao.getGlobalStatistics(chapter.getTranslation());
		item6.setText(1, getStatistics(globalStatistics, "SHORTEST_BOOK_BY_CHAPTERS"));
		item7.setText(1, getStatistics(globalStatistics, "LONGEST_BOOK_BY_CHAPTERS"));
		item8.setText(1, getStatistics(globalStatistics, "SHORTEST_BOOK_BY_CHARACTERS"));
		item9.setText(1, getStatistics(globalStatistics, "LONGEST_BOOK_BY_CHARACTERS"));
		item10.setText(1, getStatistics(globalStatistics, "SHORTEST_CHAPTER_BY_VERSES"));
		item11.setText(1, getStatistics(globalStatistics, "LONGEST_CHAPTER_BY_VERSES"));
		item12.setText(1, getStatistics(globalStatistics, "SHORTEST_CHAPTER_BY_CHARACTERS"));
		item13.setText(1, getStatistics(globalStatistics, "LONGEST_CHAPTER_BY_CHARACTERS"));
		item14.setText(1, getStatistics(globalStatistics, "SHORTEST_VERSE"));
		item15.setText(1, getStatistics(globalStatistics, "LONGEST_VERSE"));
		item16.setText(1, globalStatistics.get("NUMBER_OF_ALL_BOOKS"));
		item17.setText(1, globalStatistics.get("NUMBER_OF_ALL_CHAPTERS"));
		item18.setText(1, globalStatistics.get("NUMBER_OF_ALL_VERSES"));
		item19.setText(1, globalStatistics.get("NUMBER_OF_ALL_CHARACTERS"));
	}

	private String getStatistics(Map<String, String> globalStatistics, String key) {
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