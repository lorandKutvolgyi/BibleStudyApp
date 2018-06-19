package com.lory.biblereader.model.dao;

public class BibleDaoFactory {

	private static BibleDao dao;

	public static BibleDao getInstance() {
		if (dao == null) {
			dao = new BibleDao();
		}
		return dao;
	}
}