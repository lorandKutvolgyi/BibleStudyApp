package database;

public class DaoFactory {
    private static ChapterDao dao = new ChapterSqlDao();

    public static ChapterDao getInstanceOfChapterDao() {
        return dao;
    }
}
