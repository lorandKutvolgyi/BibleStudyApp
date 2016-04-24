package com.lory.biblereader.perspective.model.dao;

/**
 * Factory for Chapter Dao.
 *
 * @author lorandKutvolgyi
 *
 */
public class ChapterDaoFactory {

    private static final ChapterDao dao = new ChapterSqlDao();

    /**
     * Factory method for ChapterDao.
     *
     * @return ChapterDao
     */
    public static ChapterDao getInstance() {
        return dao;
    }
}