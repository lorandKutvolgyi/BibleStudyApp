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
        loadJdbcDriver();
        String url = prop.getProperty("url");
        String username = prop.getProperty("username");
        String password = prop.getProperty("password");
        createConnection(url, username, password);
    }

    private void loadProperties() {
        InputStream input = null;
        try {
            Class<? extends ChapterSqlDao> clazz = getClass();
            input = clazz.getResourceAsStream("/src/database/db_connection.properties");
            prop.load(input);
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (input != null) {
                try {
                    input.close();
                } catch (IOException ex) {
                    ex.printStackTrace();
                }
            }
        }
    }

    private void loadJdbcDriver() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
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
            PreparedStatement stmt = connection.prepareStatement("SELECT Chapter, Content FROM " + book.getTitle()
                    + " WHERE chapter=?;");
            stmt.setInt(1, id);
            ResultSet result = stmt.executeQuery();
            result.next();
            chapter = new Chapter();
            chapter.setId(result.getInt("Chapter"));
            chapter.setText(result.getString("Content"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return chapter;
    }

    @Override
    public List<Chapter> findAll(Book book) {
        List<Chapter> chapters = new ArrayList<>();
        try {
            PreparedStatement stmt = connection.prepareStatement("SELECT chapter, content FROM " + book.getTitle()
                    + " ;");
            stmt.setString(1, book.getTitle());
            ResultSet result = stmt.executeQuery();
            while (result.next()) {
                Chapter chapter = new Chapter();
                chapter.setId(result.getInt("Chapter"));
                chapter.setText(result.getString("Content"));
                chapters.add(chapter);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return chapters;
    }
}
