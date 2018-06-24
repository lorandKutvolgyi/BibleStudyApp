package com.lory.biblereader.model.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.google.common.collect.Multimap;
import com.google.common.collect.TreeMultimap;
import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.parts.middlestack.textpart.contextmenu.VerseContext;

@Creatable
@Singleton
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
			String tableName = translation != null ? "study_app." + translation
					: "study_app." + translationManager.getActiveTranslationAbbreviation().toLowerCase();
			PreparedStatement stmt = connection.prepareStatement(
					"SELECT chapter, string_agg('<div id='||verse||'><span class=''nonsearchable''>'||verse ||'</span>' || ' ' || contents || '</div>', '' ORDER BY verse) as contents FROM "
							+ tableName + " WHERE chapter=? AND book=? GROUP BY chapter;");
			stmt.setInt(1, id);
			stmt.setString(2, book.getTitle());
			ResultSet result = stmt.executeQuery();
			if (!result.next()) {
				throw new IllegalArgumentException("Chapter " + id + " does not exist in the book " + book);
			}
			int chapterId = result.getInt("chapter");
			String content = result.getString("contents");
			String usedTranslation = translation != null ? translation
					: translationManager.getActiveTranslationAbbreviation();
			return new Chapter(chapterId, content, book, usedTranslation);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return chapter;
	}

	public String findVerseByChapterAndId(Chapter chapter, String verseId, String translation) {
		String verse = null;
		try {
			PreparedStatement stmt = connection.prepareStatement(
					"SELECT contents FROM study_app." + translation + " WHERE chapter=? AND book=? AND verse=?;");
			stmt.setInt(1, chapter.getId());
			stmt.setString(2, chapter.getBook().getTitle());
			stmt.setInt(3, Integer.parseInt(verseId));
			ResultSet result = stmt.executeQuery();
			if (!result.next()) {
				throw new IllegalArgumentException("Verse " + verseId + " does not exist. Book " + chapter.getBook()
						+ " Chapter: " + chapter.getId());
			}
			verse = result.getString("contents");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return verse;
	}

	public String findVerseByContext(VerseContext context) {
		String verse = null;
		try {
			PreparedStatement stmt = connection.prepareStatement("SELECT contents FROM study_app."
					+ context.getTranslation() + " WHERE chapter=? AND book=? AND verse=?;");
			stmt.setInt(1, context.getChapterId());
			stmt.setString(2, context.getBookTitle());
			stmt.setInt(3, context.getVerseId());
			ResultSet result = stmt.executeQuery();
			if (!result.next()) {
				throw new IllegalArgumentException("Verse " + context.getVerseId() + " does not exist. Book "
						+ context.getBookTitle() + " Chapter: " + context.getChapterId());
			}
			verse = result.getString("contents");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return verse;
	}

	public int getBookSize(Book book, TranslationManager translationManager) {
		return getBookSize(book.getTitle(), translationManager.getActiveTranslationAbbreviation().toLowerCase());
	}

	public int getBookSize(String bookTitle, String translation) {
		int size = 0;
		try {
			PreparedStatement stmt = connection
					.prepareStatement("SELECT max(chapter) as max FROM study_app." + translation + " WHERE book=?;");
			stmt.setString(1, bookTitle);
			ResultSet result = stmt.executeQuery();
			result.next();
			size = result.getInt("max");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return size;
	}

	public int getChapterSize(String bookTitle, int chapterId, String translation) {
		int size = 0;
		try {
			PreparedStatement stmt = connection.prepareStatement(
					"SELECT max(verse) as max FROM study_app." + translation + " WHERE book=? AND chapter=?;");
			stmt.setString(1, bookTitle);
			stmt.setInt(2, chapterId);
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
			PreparedStatement stmt = connection
					.prepareStatement("SELECT language, abbrev, description FROM  study_app.translations;");
			ResultSet result = stmt.executeQuery();
			if (!result.next()) {
				throw new IllegalStateException("There is no translation downloaded");
			}
			do {
				String lang = result.getString("language");
				String translation = result.getString("abbrev");
				String description = result.getString("description");
				translations.put(lang, translation + ":" + description);
			} while (result.next());
		} catch (SQLException e) {
			e.printStackTrace();
		}
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