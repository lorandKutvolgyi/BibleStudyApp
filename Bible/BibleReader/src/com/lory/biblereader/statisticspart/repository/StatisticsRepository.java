package com.lory.biblereader.statisticspart.repository;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.i18n.MessageService;
import com.lory.biblereader.textpart.Chapter;

@Creatable
@Singleton
public class StatisticsRepository {
	private Connection connection;
	private final Properties prop = new Properties();
	private final MessageService messageService;

	@Inject
	public StatisticsRepository(MessageService messageService) {
		this.messageService = messageService;
		loadProperties();
		loadDriverClass();
		createConnection(prop.getProperty("url"), prop.getProperty("username"), prop.getProperty("password"));
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

	@Override
	public String toString() {
		return "ChapterSqlDao\n\tconnection: " + (connection != null);
	}

	private void loadProperties() {
		Class<? extends StatisticsRepository> clazz = getClass();
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
