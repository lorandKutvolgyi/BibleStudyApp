package com.lory.biblereader.base.translation.model.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.google.common.collect.Multimap;
import com.google.common.collect.TreeMultimap;
import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.base.translation.menu.TranslationManager;
import com.lory.biblereader.base.translation.model.Book;
import com.lory.biblereader.base.translation.model.Chapter;
import com.lory.biblereader.bookmarkpart.BookMark;
import com.lory.biblereader.bookmarkpart.BookMarkCategory;
import com.lory.biblereader.bookmarkpart.BookMarkCategoryFactory;
import com.lory.biblereader.bookmarkpart.BookMarkUtil;
import com.lory.biblereader.textpart.contextmenu.VerseContext;

@Creatable
@Singleton
public class BibleDao {

	private Connection connection;
	private final Properties prop = new Properties();
	private final MessageService messageService;

	@Inject
	public BibleDao(MessageService messageService) {
		this.messageService = messageService;
		loadProperties();
		loadDriverClass();
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

	private void loadDriverClass() {
		try {
			Class.forName(prop.getProperty("driver"));
		} catch (ClassNotFoundException e) {
			System.err.println("PostgreSQL DataSource unable to load PostgreSQL JDBC Driver");
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
		String activeTranslation = translationManager.getActiveTranslationAbbreviation();
		if (activeTranslation.isEmpty()) {
			return 0;
		}
		return getBookSize(book.getTitle(), activeTranslation.toLowerCase());
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

	public void saveUserNote(String bookTitle, int chapterId, String note) {
		if (isExistingUserNotes(bookTitle, chapterId, note)) {
			updateUserNotes(bookTitle, chapterId, note);
		} else {
			insertUserNotes(bookTitle, chapterId, note);
		}
	}

	public boolean isExistingUserNotes(String bookTitle, int chapterId, String note) {
		try {
			PreparedStatement stmt = connection
					.prepareStatement("SELECT count(*) FROM study_app.user_notes WHERE book=? AND chapter=?;");
			stmt.setString(1, bookTitle);
			stmt.setInt(2, chapterId);
			ResultSet result = stmt.executeQuery();
			if (result.next()) {
				return result.getInt(1) > 0;
			} else {
				return false;
			}
		} catch (SQLException e) {
			throw new IllegalStateException("Database error");
		}
	}

	public void updateUserNotes(String bookTitle, int chapterId, String note) {
		try {
			PreparedStatement stmt = connection
					.prepareStatement("UPDATE study_app.user_notes SET notes=? WHERE book=? AND chapter=?;");
			stmt.setString(1, note);
			stmt.setString(2, bookTitle);
			stmt.setInt(3, chapterId);
			stmt.execute();
		} catch (SQLException e) {
			throw new IllegalStateException("Database error");
		}
	}

	public void insertUserNotes(String bookTitle, int chapterId, String note) {
		try {
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO study_app.user_notes (book, chapter, notes) VALUES(?, ?, ?);");
			stmt.setString(1, bookTitle);
			stmt.setInt(2, chapterId);
			stmt.setString(3, note);
			stmt.execute();
		} catch (SQLException e) {
			throw new IllegalStateException("Database error");
		}
	}

	public String getUserNote(Chapter chapter) {
		try {
			PreparedStatement stmt = connection
					.prepareStatement("SELECT notes FROM study_app.user_notes WHERE book=? AND chapter=?;");
			stmt.setString(1, chapter.getBook().getTitle());
			stmt.setInt(2, chapter.getId());
			ResultSet resultSet = stmt.executeQuery();
			if (resultSet.next()) {
				return resultSet.getString(1);
			} else {
				return "";
			}
		} catch (SQLException e) {
			throw new IllegalStateException("Database error");
		}
	}

	public List<BookMark> getBookMarks() {
		try {
			PreparedStatement stmt = connection
					.prepareStatement("SELECT chapter, book, verses, label, 'time' FROM study_app.bookmark;");
			ResultSet resultSet = stmt.executeQuery();
			List<BookMark> result = new ArrayList<>();
			while (resultSet.next()) {
				BookMark bookMark = new BookMark(resultSet.getInt(1), resultSet.getString(2),
						BookMarkUtil.getVersesAsIntegers(resultSet.getString(3)),
						BookMarkCategoryFactory.getBookMarkCategory(resultSet.getString(4)), messageService);
				result.add(bookMark);
			}
			return result;
		} catch (SQLException e) {
			throw new IllegalStateException("Database error");
		}
	}

	public void saveBookMark(BookMark bookMark) {
		try {
			PreparedStatement stmt = connection.prepareStatement(
					"INSERT INTO study_app.bookmark (chapter, book, verses, label) VALUES(?, ?, ?, ?) ;");
			stmt.setInt(1, bookMark.getChapterId());
			stmt.setString(2, bookMark.getBookTitle());
			stmt.setString(3, BookMarkUtil.getVersesAsString(bookMark.getVerses()));
			stmt.setString(4, bookMark.getCategory().getText());
			stmt.execute();
		} catch (SQLException e) {
			throw new IllegalStateException("Database error");
		}
	}

	public boolean hasBookMark(BookMark bookMark) {
		try {
			PreparedStatement stmt = connection.prepareStatement(
					"SELECT chapter, book, verses, label FROM study_app.bookmark WHERE chapter=? AND book=? AND verses=? AND label=?;",
					ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			stmt.setInt(1, bookMark.getChapterId());
			stmt.setString(2, bookMark.getBookTitle());
			stmt.setString(3, BookMarkUtil.getVersesAsString(bookMark.getVerses()));
			stmt.setString(4, bookMark.getCategory().getText());
			ResultSet resultSet = stmt.executeQuery();
			return resultSet.first();
		} catch (SQLException e) {
			throw new IllegalStateException("Database error");
		}
	}

	@Override
	public String toString() {
		return "ChapterSqlDao\n\tconnection: " + (connection != null);
	}

	public void removeBookMark(BookMark bookMark) {
		try {
			PreparedStatement stmt = connection.prepareStatement(
					"DELETE FROM study_app.bookmark WHERE chapter=? AND book=? AND verses=? AND label=?;");
			stmt.setInt(1, bookMark.getChapterId());
			stmt.setString(2, bookMark.getBookTitle());
			stmt.setString(3, BookMarkUtil.getVersesAsString(bookMark.getVerses()));
			stmt.setString(4, bookMark.getCategory().getText());
			stmt.execute();
		} catch (SQLException e) {
			throw new IllegalStateException("Database error");
		}
	}

	public void removeBookMarkCategory(BookMarkCategory bookMarkCategory) {
		try {
			PreparedStatement stmt = connection.prepareStatement("DELETE FROM study_app.bookmark WHERE label=?;");
			stmt.setString(1, bookMarkCategory.getText());
			stmt.execute();
		} catch (SQLException e) {
			throw new IllegalStateException("Database error");
		}
	}

	public void removeAllBookMark() {
		try {
			PreparedStatement stmt = connection.prepareStatement("DELETE FROM study_app.bookmark;");
			stmt.execute();
		} catch (SQLException e) {
			throw new IllegalStateException("Database error");
		}
	}

	public Map<String, String> getGlobalStatistics(String translation) {
		Map<String, String> result = new HashMap<>();
		try {
			PreparedStatement stmt = connection
					.prepareStatement(
							"SELECT key, value||' ('||additional_info||')' as val FROM study_app."
									+ translation.toLowerCase() + "_global_statistics;",
							ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			ResultSet resultSet = stmt.executeQuery();
			while (resultSet.next()) {
				result.put(resultSet.getString("key"), resultSet.getString("val").replace(" ()", ""));
			}
		} catch (SQLException e) {
			throw new IllegalStateException("Database error");
		}
		return result;
	}

	public Map<String, String> getStatisticsByChapter(Chapter chapter) {
		Map<String, String> result = new HashMap<>();
		try {
			PreparedStatement stmt = connection.prepareStatement(
					"SELECT key, value FROM study_app." + chapter.getTranslation().toLowerCase()
							+ "_statistics_per_chapters WHERE book=? AND chapter=?;",
					ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			stmt.setString(1, chapter.getBook().getTitle());
			stmt.setString(2, String.valueOf(chapter.getId()));
			ResultSet resultSet = stmt.executeQuery();
			while (resultSet.next()) {
				result.put(resultSet.getString("key"), resultSet.getString("value"));
			}
		} catch (SQLException e) {
			throw new IllegalStateException("Database error");
		}
		return result;
	}
}