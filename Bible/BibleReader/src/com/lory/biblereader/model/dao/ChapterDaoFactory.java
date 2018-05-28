package com.lory.biblereader.model.dao;

public class ChapterDaoFactory {

	private static ChapterDao dao;

	public static ChapterDao getInstance() {
		if (dao == null) {
			dao = new ChapterSqlDao();
		}
		return dao;
	}
}