package com.lory.biblereader.statisticspart.service;

import java.util.Map;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.model.Chapter;
import com.lory.biblereader.base.translation.model.dao.BibleDao;

@Creatable
@Singleton
public class StatisticsService {

	private BibleDao dao;// TODO separate dao for statistics

	@Inject
	public StatisticsService(BibleDao dao) {
		this.dao = dao;
	}

	public Map<String, String> getStatisticsByChapter(Chapter chapter) {
		return dao.getStatisticsByChapter(chapter);
	}

	public Map<String, String> getGlobalStatistics(Chapter chapter) {
		return dao.getGlobalStatistics(chapter.getTranslation());
	}
}