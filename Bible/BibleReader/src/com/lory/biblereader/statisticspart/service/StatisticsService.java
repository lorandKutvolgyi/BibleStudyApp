package com.lory.biblereader.statisticspart.service;

import java.util.Map;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.statisticspart.repository.StatisticsRepository;
import com.lory.biblereader.textpart.Chapter;

@Creatable
@Singleton
public class StatisticsService {

	private StatisticsRepository repository;

	@Inject
	public StatisticsService(StatisticsRepository repository) {
		this.repository = repository;
	}

	public Map<String, String> getStatisticsByChapter(Chapter chapter) {
		return repository.getStatisticsByChapter(chapter);
	}

	public Map<String, String> getGlobalStatistics(Chapter chapter) {
		return repository.getGlobalStatistics(chapter.getTranslation());
	}
}