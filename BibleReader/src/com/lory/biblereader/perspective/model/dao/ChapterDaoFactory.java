package com.lory.biblereader.perspective.model.dao;

/**
 * Factory for Chapter Dao.
 *
 * @author lorandKutvolgyi
 *
 */
public class ChapterDaoFactory {

    private static ChapterDao dao;

    /**
     * Factory method for ChapterDao.
     *
     * @return ChapterDao
     */
    public static ChapterDao getInstance() {
        if (dao == null) {
            dao = new ChapterSqlDao();
        }
        return dao;
    }
}