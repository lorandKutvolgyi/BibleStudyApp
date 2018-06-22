package com.lory.biblereader.model;

import java.util.Collection;
import java.util.Collections;

import com.lory.biblereader.menu.TranslationManager;
import com.lory.biblereader.model.dao.BibleDao;
import com.lory.biblereader.model.dao.BibleDaoFactory;

public enum OldTestamentBooks implements Book {

	GENESIS("Gen"),
	EXODUS("Exod"),
	LEVITICUS("Lev"),
	NUMBERS("Num"),
	DEUTERONOMY("Deut"),
	JOSHUA("Josh"),
	JUDGES("Judg"),
	RUTH("Ruth"),
	I_SAMUEL("I_Sam"),
	II_SAMUEL("II_Sam"),
	I_KINGS("I_Kgs"),
	II_KINGS("II_Kgs"),
	I_CHRONICLES("I_Chr"),
	II_CHRONICLES("II_Chr"),
	EZRA("Ezra"),
	NEHEMIAH("Neh"),
	ESTHER("Esth"),
	JOB("Job"),
	PSALMS("Ps"),
	PROVERBS("Prov"),
	ECCLESIASTES("Eccl"),
	SONG_OF_SOLOMON("Song"),
	ISAIAH("Isa"),
	JEREMIAH("Jer"),
	LAMENTATIONS("Lam"),
	EZEKIEL("Ezek"),
	DANIEL("Dan"),
	HOSEA("Hos"),
	JOEL("Joel"),
	AMOS("Amos"),
	OBADIAH("Obad"),
	JONAH("Jonah"),
	MICAH("Mic"),
	NAHUM("Nah"),
	HABAKKUK("Hab"),
	ZEPHANIAH("Zeph"),
	HAGGAI("Hag"),
	ZECHARIAH("Zech"),
	MALACHI("Mal");

	private static BibleDao dao = BibleDaoFactory.getInstance();
	private String title;

	private OldTestamentBooks(String title) {
		this.title = title;
	}

	@Override
	public String getTitle() {
		return title;
	}

	@Override
	public Testament getTestament() {
		return Testament.OLD_TESTAMENT;
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