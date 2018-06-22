package com.lory.biblereader.model;

import java.util.Collection;
import java.util.Collections;

import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.dao.BibleDao;
import com.lory.biblereader.model.dao.BibleDaoFactory;

public enum NewTestamentBooks implements Book {

	MATTHEW("Matt"),
	MARK("Mark"),
	LUKE("Luke"),
	JOHN("John"),
	ACTS("Acts"),
	ROMANS("Rom"),
	I_CORINTHIANS("I_Cor"),
	II_CORINTHIANS("II_Cor"),
	GALATIANS("Gal"),
	EPHESIANS("Eph"),
	PHILIPPIANS("Phil"),
	COLOSSIANS("Col"),
	I_THESSALONIANS("I_Thess"),
	II_THESSALONIANS("II_Thess"),
	I_TIMOTHY("I_Tim"),
	II_TIMOTHY("II_Tim"),
	TITUS("Titus"),
	PHILEMON("Phlm"),
	HEBREWS("Heb"),
	JAMES("Jas"),
	I_PETER("I_Pet"),
	II_PETER("II_Pet"),
	I_JOHN("I_John"),
	II_JOHN("II_John"),
	III_JOHN("III_John"),
	JUDE("Jude"),
	REVELATION("Rev");

	private static BibleDao dao = BibleDaoFactory.getInstance();
	private final String title;

	private NewTestamentBooks(String title) {
		this.title = title;
	}

	@Override
	public String getTitle() {
		return title;
	}

	@Override
	public Testament getTestament() {
		return Testament.NEW_TESTAMENT;
	}

	@Override
	public int getBookSize(TranslationManager translationManager) {
		return dao.getBookSize(this, translationManager);
	}

	@Override
	public Chapter getChapter(int id, String translation, TranslationManager translationManager) {
		return dao.findChapterById(this, id, translation, translationManager);
	}

	@Override
	public Collection<? extends TreeElement> getChildren() {
		return Collections.emptyList();
	}

	@Override
	public String getText() {
		return getTitle();
	}

	@Override
	public TreeElement getParent() {
		return getTestament();
	}

}