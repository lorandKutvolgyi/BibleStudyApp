package com.lory.biblereader.model.dao;

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

import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;

/**
 * Data access object for chapters of the Bible using MySql Database.
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
			ex.printStackTrace();// TODO userfrendly message in a popup
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
	public Chapter findChapterById(Book book, int id) {
		Chapter chapter = null;
		try {
			PreparedStatement stmt = createStatement(book, id);
			ResultSet result = executeQuery(book, id, stmt);
			chapter = createChapterByResult(book, result);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return chapter;
	}

	private PreparedStatement createStatement(Book book, int id) throws SQLException {
		PreparedStatement stmt = connection
				.prepareStatement("SELECT Chapter, Content FROM " + book.getTitle() + " WHERE chapter=?;");
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

	private Chapter createChapterByResult(Book book, ResultSet result) throws SQLException {
		int id = result.getInt("Chapter");
		String content = result.getString("Content");
		return new Chapter(id, content, book);
	}

	@Override
	public List<Chapter> findAllChapters(Book book) {
		List<Chapter> chapters = new ArrayList<>();
		try {
			PreparedStatement stmt = connection
					.prepareStatement("SELECT chapter, content FROM " + book.getTitle() + " ORDER BY chapter;");
			ResultSet result = stmt.executeQuery();
			while (result.next()) {
				Chapter chapter = createChapterByResult(book, result);
				chapters.add(chapter);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return chapters;
	}

	@Override
	public String toString() {
		return "ChapterSqlDao\n\tconnection: " + (connection != null);
	}
}
