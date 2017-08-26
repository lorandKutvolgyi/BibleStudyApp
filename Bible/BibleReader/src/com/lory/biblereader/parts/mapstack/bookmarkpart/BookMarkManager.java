package com.lory.biblereader.parts.mapstack.bookmarkpart;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Observable;
import java.util.Set;
import java.util.TreeMap;

import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.Bible;
import com.lory.biblereader.model.Chapter;

@Creatable
@Singleton
public class BookMarkManager extends Observable {
	private Map<BookMarkCategory, Set<BookMark>> bookMarksByCategory = new TreeMap<>();
	private Map<BookMarkCategory, LocalDateTime> categoriesWithCreationDate = new TreeMap<>();
	private final BookMarkCategory DEFAULT_CATEGORY = new BookMarkCategory("Others", this);

	public void storeBookMark(BookMark bookMark) {
		if (!hasBookMark(bookMark)) {
			saveBookMark(bookMark);
			setChanged();
			notifyObservers();
		}
	}

	public Map<BookMarkCategory, LocalDateTime> getCategories() {
		return categoriesWithCreationDate;
	}

	public Set<BookMark> getBookMarksByCategory(BookMarkCategory category) {
		return bookMarksByCategory.get(category);
	}

	public void restoreCategories(Map<String, String> state) {
		for (Entry<String, String> entry : state.entrySet()) {
			if (entry.getKey().startsWith("Cat:")) {
				getCategories().put(new BookMarkCategory(entry.getKey().replace("Cat:", ""), this),
						LocalDateTime.parse(entry.getValue()));
			}
		}
	}

	public void restoreBookMarks(Map<String, String> state, MessageService messageService) {
		for (Entry<String, String> entry : state.entrySet()) {
			if (!entry.getKey().startsWith("Cat:")) {
				BookMarkCategory category = new BookMarkCategory(entry.getKey().toString(), this);
				String[] bookMarks = entry.getValue().substring(0, entry.getValue().length() - 1).split(";");
				bookMarksByCategory.put(category, new HashSet<>());
				for (String bookMarkText : bookMarks) {
					String[] bookAndOthers = bookMarkText.split(":");
					String[] chapterAndVerses = bookAndOthers[1].split("\\(");
					String chapterAsString = chapterAndVerses[0];
					String versesAsString = chapterAndVerses[1].substring(0, chapterAndVerses[1].length() - 1);
					List<Integer> verses = BookMarkUtil.getVersesAsIntegers(versesAsString);
					Chapter chapter = Bible.getChapter(bookAndOthers[0], Integer.valueOf(chapterAsString));
					getBookMarksByCategory(category).add(new BookMark(chapter, verses, category, messageService));
				}
			}
		}
	}

	private boolean hasBookMark(BookMark bookMark) {
		Set<BookMark> bookMarks = bookMarksByCategory.get(getCategory(bookMark));
		return bookMarks != null && bookMarks.contains(bookMark);
	}

	private BookMarkCategory getCategory(BookMark bookMark) {
		return bookMark.getCategory() != null ? bookMark.getCategory() : DEFAULT_CATEGORY;
	}

	private void saveBookMark(BookMark bookMark) {
		BookMarkCategory category = getCategory(bookMark);
		if (isCategoryExist(category)) {
			bookMarksByCategory.get(category).add(bookMark);
		} else {
			Set<BookMark> bookMarks = new HashSet<>();
			bookMarks.add(bookMark);
			bookMarksByCategory.put(category, bookMarks);
			categoriesWithCreationDate.put(category, LocalDateTime.now());
		}
	}

	private boolean isCategoryExist(BookMarkCategory category) {
		return bookMarksByCategory.containsKey(category);
	}

	public BookMarkCategory getDefaultCategory() {
		return DEFAULT_CATEGORY;
	}

}
