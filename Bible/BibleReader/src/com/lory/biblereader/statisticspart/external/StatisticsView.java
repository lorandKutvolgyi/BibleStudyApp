package com.lory.biblereader.statisticspart.external;

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

import com.lory.biblereader.statisticspart.interfaceadapter.StatisticsPresenter;
import com.lory.biblereader.statisticspart.interfaceadapter.StatisticsViewModel;

public class StatisticsView implements Observer {

	private StatisticsViewModel model;

	private TableItem chapterHeader;
	private TableItem translationHeader;
	private TableItem item1;
	private TableItem item2;
	private TableItem item3;
	private TableItem item4;
	private TableItem item5;
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
	public StatisticsView(StatisticsViewModel model, StatisticsPresenter presenter) {
		this.model = model;
	}

	@PostConstruct
	public void init(Composite parent) {
		Table chapterStatistics = createTable(parent);

		createChapterRelatedPart(chapterStatistics);
		createTranslationRelatedPart(chapterStatistics);

		model.addObserver(this);
	}

	private Table createTable(Composite parent) {
		Table chapterStatistics = new Table(parent, SWT.NONE);
		chapterStatistics.setHeaderVisible(false);

		TableColumn col1 = new TableColumn(chapterStatistics, SWT.LEFT);
		col1.setWidth(300);

		TableColumn col2 = new TableColumn(chapterStatistics, SWT.LEFT);
		col2.setWidth(70);

		return chapterStatistics;
	}

	private void createChapterRelatedPart(Table chapterStatistics) {
		chapterHeader = new TableItem(chapterStatistics, SWT.None);
		chapterHeader.setFont(new Font(Display.getCurrent(), new FontData("Arial", 11, SWT.BOLD)));

		item1 = new TableItem(chapterStatistics, SWT.None);
		item2 = new TableItem(chapterStatistics, SWT.None);
		item3 = new TableItem(chapterStatistics, SWT.None);
		item4 = new TableItem(chapterStatistics, SWT.None);
		item5 = new TableItem(chapterStatistics, SWT.None);

		item1.setText(0, model.getShortestVerseLabel());
		item2.setText(0, model.getLongestVerseLabel());
		item3.setText(0, model.getNumberOfVersesLabel());
		item4.setText(0, model.getNumberOfCharactersLabel());
		item5.setText(0, model.getNumberOfWordsLabel());
	}

	private void createTranslationRelatedPart(Table chapterStatistics) {
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

		item6.setText(0, model.getShortestBookByChaptersLabel());
		item7.setText(0, model.getLongestBookByChaptersLabel());
		item8.setText(0, model.getShortestBookByCharactersLabel());
		item9.setText(0, model.getLongestBookByCharactersLabel());
		item10.setText(0, model.getShortestChapterByVersesLabel());
		item11.setText(0, model.getLongestChapterByVersesLabel());
		item12.setText(0, model.getShortestChapterByCharactersLabel());
		item13.setText(0, model.getLongestChapterByCharactersLabel());
		item14.setText(0, model.getShortestVerseInAllBookLabel());
		item15.setText(0, model.getLongestVerseInAllBooksLabel());
		item16.setText(0, model.getNumberOfAllBooksLabel());
		item17.setText(0, model.getNumberOfAllChaptersLabel());
		item18.setText(0, model.getNumberOfAllVersesLabel());
		item19.setText(0, model.getNumberOfAllCharactersLabel());
	}

	@Override
	public void update(Observable o, Object arg) {
		setItems();
	}

	private void setItems() {
		chapterHeader.setText(0, model.getChapter());
		translationHeader.setText(0, model.getTranslation());

		item1.setText(1, model.getShortestVerse());
		item2.setText(1, model.getLongestVerse());
		item3.setText(1, model.getNumberOfVerses());
		item4.setText(1, model.getNumberOfCharacters());
		item5.setText(1, model.getNumberOfWords());
		item6.setText(1, model.getShortestBookByChapters());
		item7.setText(1, model.getLongestBookByChapters());
		item8.setText(1, model.getShortestBookByCharacters());
		item9.setText(1, model.getLongestBookByCharacters());
		item10.setText(1, model.getShortestChapterByVerses());
		item11.setText(1, model.getLongestChapterByVerses());
		item12.setText(1, model.getShortestChapterByCharacters());
		item13.setText(1, model.getLongestChapterByCharacters());
		item14.setText(1, model.getShortestVerseInAllBook());
		item15.setText(1, model.getLongestVerseInAllBooks());
		item16.setText(1, model.getNumberOfAllBooks());
		item17.setText(1, model.getNumberOfAllChapters());
		item18.setText(1, model.getNumberOfAllVerses());
		item19.setText(1, model.getNumberOfAllCharacters());
	}

}