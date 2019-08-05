package com.lory.biblereader.bookspart.treesorter;

import java.util.List;

import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.base.translation.model.Book;
import com.lory.biblereader.base.translation.model.NewTestamentBooks;
import com.lory.biblereader.base.translation.model.OldTestamentBooks;

@Creatable
@Singleton
public class CanonicalBooksOrder extends AbstractBooksOrder {

	public CanonicalBooksOrder() {
		List<Book> books = getBooks();
		books.add(OldTestamentBooks.GENESIS);
		books.add(OldTestamentBooks.EXODUS);
		books.add(OldTestamentBooks.LEVITICUS);
		books.add(OldTestamentBooks.NUMBERS);
		books.add(OldTestamentBooks.DEUTERONOMY);
		books.add(OldTestamentBooks.JOSHUA);
		books.add(OldTestamentBooks.JUDGES);
		books.add(OldTestamentBooks.RUTH);
		books.add(OldTestamentBooks.I_SAMUEL);
		books.add(OldTestamentBooks.II_SAMUEL);
		books.add(OldTestamentBooks.I_KINGS);
		books.add(OldTestamentBooks.II_KINGS);
		books.add(OldTestamentBooks.I_CHRONICLES);
		books.add(OldTestamentBooks.II_CHRONICLES);
		books.add(OldTestamentBooks.EZRA);
		books.add(OldTestamentBooks.NEHEMIAH);
		books.add(OldTestamentBooks.ESTHER);
		books.add(OldTestamentBooks.JOB);
		books.add(OldTestamentBooks.PSALMS);
		books.add(OldTestamentBooks.PROVERBS);
		books.add(OldTestamentBooks.ECCLESIASTES);
		books.add(OldTestamentBooks.SONG_OF_SOLOMON);
		books.add(OldTestamentBooks.ISAIAH);
		books.add(OldTestamentBooks.JEREMIAH);
		books.add(OldTestamentBooks.LAMENTATIONS);
		books.add(OldTestamentBooks.EZEKIEL);
		books.add(OldTestamentBooks.DANIEL);
		books.add(OldTestamentBooks.HOSEA);
		books.add(OldTestamentBooks.JOEL);
		books.add(OldTestamentBooks.AMOS);
		books.add(OldTestamentBooks.OBADIAH);
		books.add(OldTestamentBooks.JONAH);
		books.add(OldTestamentBooks.MICAH);
		books.add(OldTestamentBooks.NAHUM);
		books.add(OldTestamentBooks.HABAKKUK);
		books.add(OldTestamentBooks.ZEPHANIAH);
		books.add(OldTestamentBooks.HAGGAI);
		books.add(OldTestamentBooks.ZECHARIAH);
		books.add(OldTestamentBooks.MALACHI);
		books.add(NewTestamentBooks.MATTHEW);
		books.add(NewTestamentBooks.MARK);
		books.add(NewTestamentBooks.LUKE);
		books.add(NewTestamentBooks.JOHN);
		books.add(NewTestamentBooks.ACTS);
		books.add(NewTestamentBooks.ROMANS);
		books.add(NewTestamentBooks.I_CORINTHIANS);
		books.add(NewTestamentBooks.II_CORINTHIANS);
		books.add(NewTestamentBooks.GALATIANS);
		books.add(NewTestamentBooks.EPHESIANS);
		books.add(NewTestamentBooks.PHILIPPIANS);
		books.add(NewTestamentBooks.COLOSSIANS);
		books.add(NewTestamentBooks.I_THESSALONIANS);
		books.add(NewTestamentBooks.II_THESSALONIANS);
		books.add(NewTestamentBooks.I_TIMOTHY);
		books.add(NewTestamentBooks.II_TIMOTHY);
		books.add(NewTestamentBooks.TITUS);
		books.add(NewTestamentBooks.PHILEMON);
		books.add(NewTestamentBooks.HEBREWS);
		books.add(NewTestamentBooks.JAMES);
		books.add(NewTestamentBooks.I_PETER);
		books.add(NewTestamentBooks.II_PETER);
		books.add(NewTestamentBooks.I_JOHN);
		books.add(NewTestamentBooks.II_JOHN);
		books.add(NewTestamentBooks.III_JOHN);
		books.add(NewTestamentBooks.JUDE);
		books.add(NewTestamentBooks.REVELATION);
	}
}
