package com.lory.biblereader.notespart.repository;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.textpart.Chapter;

@Creatable
@Singleton
public class NotesRepository {
	private Connection connection;
	private final Properties prop = new Properties();
	private final MessageService messageService;

	@Inject
	public NotesRepository(MessageService messageService) {
		this.messageService = messageService;
		loadProperties();
		loadDriverClass();
		createConnection(prop.getProperty("url"), prop.getProperty("username"), prop.getProperty("password"));
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

	private void updateUserNotes(String bookTitle, int chapterId, String note) {
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

	private void insertUserNotes(String bookTitle, int chapterId, String note) {
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

	@Override
	public String toString() {
		return "ChapterSqlDao\n\tconnection: " + (connection != null);
	}

	private void loadProperties() {
		Class<? extends NotesRepository> clazz = getClass();
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
