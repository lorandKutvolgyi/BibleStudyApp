package database;

/**
 * Factory for Chapter Dao.
 *
 * @author lorandKutvolgyi
 *
 */
public enum ChapterDaoFactory {
    CHAPTER_SQL_DAO;

    private ChapterDao dao;

    private ChapterDaoFactory() {
        dao = new ChapterSqlDao();
    }

    /**
     * Factory method for ChapterDao.
     *
     * @return ChapterDao
     */
    public ChapterDao getInstance() {
        return dao;
    }
}