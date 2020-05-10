package com.lory.biblereader.menu.repository;

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

import com.google.common.collect.Multimap;
import com.google.common.collect.TreeMultimap;
import com.lory.biblereader.base.translation.i18n.MessageService;

@Creatable
@Singleton
public class MenuRepository {

	private Connection connection;
	private final Properties prop = new Properties();
	private final MessageService messageService;

	@Inject
	public MenuRepository(MessageService messageService) {
		this.messageService = messageService;
		loadProperties();
		loadDriverClass();
		createConnection(prop.getProperty("url"), prop.getProperty("username"), prop.getProperty("password"));
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

	private void loadProperties() {
		Class<? extends MenuRepository> clazz = getClass();
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
