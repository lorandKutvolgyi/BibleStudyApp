package com.lory.biblereader.model.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.google.common.collect.Multimap;
import com.google.common.collect.TreeMultimap;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;

public class BibleDao {

	private Connection connection;
	private final Properties prop = new Properties();

	static {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			System.err.println("PostgreSQL DataSource unable to load PostgreSQL JDBC Driver");
		}
	}

	public BibleDao() {
		loadProperties();
		createConnection(prop.getProperty("url"), prop.getProperty("username"), prop.getProperty("password"));
	}

	private void loadProperties() {
		Class<? extends BibleDao> clazz = getClass();
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

	public Chapter findChapterById(Book book, int id, String translation, TranslationManager translationManager) {
		Chapter chapter = null;
		try {
			PreparedStatement stmt = createFindChapterByIdStatement(book, id, translation, translationManager);
			ResultSet result = executeQuery(book, id, stmt);
			chapter = createChapterByResult(book, result, translation, translationManager);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return chapter;
	}

	public String findVerseByChapterAndId(Chapter chapter, String verseId, String translation) {
		String verse = null;
		try {
			PreparedStatement stmt = createFindVerseByChapterAndIdStatement(chapter, verseId,
					"study_app." + translation);
			ResultSet result = executeFindVerseByChapterAndIdQuery(chapter, verseId, stmt);
			verse = createVerseByResult(result);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return verse;
	}

	private String createVerseByResult(ResultSet result) throws SQLException {
		return result.getString("contents");
	}

	private ResultSet executeFindVerseByChapterAndIdQuery(Chapter chapter, String verseId, PreparedStatement stmt)
			throws SQLException {
		ResultSet result = stmt.executeQuery();
		if (!result.next()) {
			throw new IllegalArgumentException(
					"Verse " + verseId + " does not exist. Book " + chapter.getBook() + " Chapter: " + chapter.getId());
		}
		return result;
	}

	private PreparedStatement createFindVerseByChapterAndIdStatement(Chapter chapter, String verseId, String tableName)
			throws SQLException {
		PreparedStatement stmt = connection
				.prepareStatement("SELECT contents FROM " + tableName + " WHERE chapter=? AND book=? AND verse=?;");
		stmt.setInt(1, chapter.getId());
		stmt.setString(2, chapter.getBook().getTitle());
		stmt.setInt(3, Integer.parseInt(verseId));
		return stmt;
	}

	private PreparedStatement createFindChapterByIdStatement(Book book, int id, String translation,
			TranslationManager translationManager) throws SQLException {
		String tableName = translation != null ? "study_app." + translation
				: "study_app." + translationManager.getActiveTranslationAbbreviation().toLowerCase();
		PreparedStatement stmt = connection.prepareStatement(
				"SELECT chapter, string_agg('<div id='||verse||'><span class=''nonsearchable''>'||verse ||'</span>' || ' ' || contents || '</div>', '' ORDER BY verse) as contents FROM "
						+ tableName + " WHERE chapter=? AND book=? GROUP BY chapter;");
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

	private Chapter createChapterByResult(Book book, ResultSet result, String translation,
			TranslationManager translationManager) throws SQLException {
		int id = result.getInt("chapter");
		String content = result.getString("contents");
		String usedTranslation = translation != null ? translation
				: translationManager.getActiveTranslationAbbreviation();
		return new Chapter(id, content, book, usedTranslation);
	}

	public int getBookSize(Book book, TranslationManager translationManager) {
		int size = 0;
		try {
			PreparedStatement stmt = connection.prepareStatement("SELECT max(chapter) as max FROM study_app."
					+ translationManager.getActiveTranslationAbbreviation().toLowerCase() + " WHERE book=?;");
			stmt.setString(1, book.getTitle());
			ResultSet result = stmt.executeQuery();
			result.next();
			size = result.getInt("max");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return size;
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
