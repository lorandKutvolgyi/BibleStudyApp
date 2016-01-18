package database;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import model.Book;
import model.Chapter;

/**
 * Data access object for chapters of the Bible using a MySql database.
 * 
 * @author lorandKutvolgyi
 * 
 */
public class ChapterSqlDao implements ChapterDao {

    private Connection connection;
    private final Properties prop = new Properties();

    public ChapterSqlDao() {
        loadProperties();
        String url = prop.getProperty("url");
        String username = prop.getProperty("username");
        String password = prop.getProperty("password");
        createConnection(url, username, password);
    }

    private void loadProperties() {
        Class<? extends ChapterSqlDao> clazz = getClass();
        try (InputStream input = clazz.getResourceAsStream("db_connection.properties")) {
            prop.load(input);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    private void createConnection(String url, String username, String password) {
        try {
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public Chapter findByChapterId(Book book, int id) {
        Chapter chapter = null;
        try {
            PreparedStatement stmt = createStatement(book, id);
            ResultSet result = executeQuery(book, id, stmt);
            chapter = createChapterByResult(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return chapter;
    }

    private PreparedStatement createStatement(Book book, int id) throws SQLException {
        PreparedStatement stmt = connection.prepareStatement("SELECT Chapter, Content FROM " + book.getTitle()
                + " WHERE chapter=?;");
        stmt.setInt(1, id);
        return stmt;
    }

    private ResultSet executeQuery(Book book, int id, PreparedStatement stmt) throws SQLException {
        ResultSet result = stmt.executeQuery();
        if (!result.next()) {
            throw new IllegalArgumentException("Chapter " + id + " does not exist in the book " + book);
        }
        return result;
    }

    private Chapter createChapterByResult(ResultSet result) throws SQLException {
        Chapter chapter = new Chapter();
        chapter.setId(result.getInt("Chapter"));
        chapter.setText(result.getString("Content"));
        return chapter;
    }

    @Override
    public List<Chapter> findAll(Book book) {
        List<Chapter> chapters = new ArrayList<>();
        try {
            PreparedStatement stmt = connection.prepareStatement("SELECT chapter, content FROM " + book.getTitle()
                    + " ;");
            ResultSet result = stmt.executeQuery();
            while (result.next()) {
                Chapter chapter = createChapterByResult(result);
                chapters.add(chapter);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return chapters;
    }
}
