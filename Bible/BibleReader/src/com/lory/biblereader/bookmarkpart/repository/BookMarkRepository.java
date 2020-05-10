package com.lory.biblereader.bookmarkpart.repository;

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

import javax.inject.Inject;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.bookmarkpart.BookMark;
import com.lory.biblereader.bookmarkpart.BookMarkCategory;
import com.lory.biblereader.bookmarkpart.BookMarkCategoryFactory;
import com.lory.biblereader.bookmarkpart.BookMarkUtil;

public class BookMarkRepository {
	private Connection connection;
	private final Properties prop = new Properties();
	private final MessageService messageService;

	@Inject
	public BookMarkRepository(MessageService messageService) {
		this.messageService = messageService;
		loadProperties();
		loadDriverClass();
		createConnection(prop.getProperty("url"), prop.getProperty("username"), prop.getProperty("password"));
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

	@Override
	public String toString() {
		return "ChapterSqlDao\n\tconnection: " + (connection != null);
	}

	private void loadProperties() {
		Class<? extends BookMarkRepository> clazz = getClass();
		try (InputStream input = clazz.getResourceAsStream("db_connection.properties")) {
			prop.load(input);
		} catch (IOException ex) {
			ex.printStackTrace();
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
}
