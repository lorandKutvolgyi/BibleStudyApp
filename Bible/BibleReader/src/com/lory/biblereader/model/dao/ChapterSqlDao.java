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

import javax.annotation.PostConstruct;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.google.common.collect.Multimap;
import com.google.common.collect.TreeMultimap;
import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;

@Creatable
@Singleton
public class ChapterSqlDao {

	private Connection connection;
	private final Properties prop = new Properties();
	private String activeTranslation;

	static {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			System.err.println("PostgreSQL DataSource unable to load PostgreSQL JDBC Driver");
		}
	}

	@PostConstruct
	public void init() {
		loadProperties();
		createConnection(prop.getProperty("url"), prop.getProperty("username"), prop.getProperty("password"));
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
		PreparedStatement stmt = connection.prepareStatement(
				"SELECT chapter, contents FROM " + activeTranslation + " WHERE chapter=? AND book=?;");
		stmt.setInt(1, id);
		stmt.setString(2, book.getTitle());
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
		int id = result.getInt("chapter");
		String content = result.getString("contents");
		return Chapter.createNewChapter(id, content, book);
	}

	public List<Chapter> findAllChapters(Book book) {
		List<Chapter> chapters = new ArrayList<>();
		try {
			PreparedStatement stmt = connection.prepareStatement(
					"SELECT chapter, contents FROM " + activeTranslation + " WHERE book=? ORDER BY chapter;");
			stmt.setString(1, book.getTitle());
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

	public Multimap<String, String> getAvailableTranslations() {
		Multimap<String, String> translations = TreeMultimap.create();
		try {
			PreparedStatement stmt = createStatement();
			ResultSet result = executeQuery(stmt);
			translations = getTranslationByResult(result);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return translations;
	}

	private PreparedStatement createStatement() throws SQLException {
		return connection.prepareStatement("SELECT language, abbrev, description FROM  study_app.translations;");
	}

	private ResultSet executeQuery(PreparedStatement stmt) throws SQLException {
		ResultSet result = stmt.executeQuery();
		if (!result.next()) {
			throw new IllegalStateException("There is no translation downloaded");
		}
		return result;
	}

	private Multimap<String, String> getTranslationByResult(ResultSet result) throws SQLException {
		Multimap<String, String> translations = TreeMultimap.create();
		do {
			String lang = result.getString("language");
			String translation = result.getString("abbrev");
			String description = result.getString("description");
			translations.put(lang, translation + ":" + description);
		} while (result.next());

		return translations;
	}

	public String getDescription(String abbreviation) {
		try {
			PreparedStatement stmt = connection
					.prepareStatement("SELECT description FROM  study_app.translations WHERE abbrev=?;");
			stmt.setString(1, abbreviation);
			ResultSet result = stmt.executeQuery();
			result.next();
			return result.getString("description");
		} catch (SQLException e) {
			throw new IllegalStateException("Translation has not been downloaded");
		}
	}

	@Override
	public String toString() {
		return "ChapterSqlDao\n\tconnection: " + (connection != null);
	}

}
