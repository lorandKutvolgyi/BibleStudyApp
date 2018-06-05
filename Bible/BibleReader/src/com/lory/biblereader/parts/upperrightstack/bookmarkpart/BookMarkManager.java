package com.lory.biblereader.parts.upperrightstack.bookmarkpart;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Observable;
import java.util.Set;
import java.util.TreeMap;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.Bible;
import com.lory.biblereader.model.Chapter;

@Creatable
@Singleton
public class BookMarkManager extends Observable {

	@Inject
	private MessageService messageService;

	private Map<BookMarkCategory, Set<BookMark>> bookMarksByCategory = new TreeMap<>();
	private Map<BookMarkCategory, LocalDateTime> categoriesWithCreationDate = new TreeMap<>();
	private BookMarkCategory DEFAULT_CATEGORY;

	@PostConstruct
	private void postConstruct() {
		DEFAULT_CATEGORY = new BookMarkCategory(messageService.getMessage("withoutLabel"), this);
	}

	public void storeBookMark(BookMark bookMark) {
		if (!hasBookMark(bookMark)) {
			saveBookMark(bookMark);
			setChanged();
			notifyObservers();
		}
	}

	private boolean hasBookMark(BookMark bookMark) {
		Set<BookMark> bookMarks = bookMarksByCategory.get(getCategory(bookMark));
		return bookMarks != null && bookMarks.contains(bookMark);
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

	private BookMarkCategory getCategory(BookMark bookMark) {
		return bookMark.getCategory() != null ? bookMark.getCategory() : DEFAULT_CATEGORY;
	}

	public Map<BookMarkCategory, LocalDateTime> getCategories() {
		return categoriesWithCreationDate;
	}

	public Set<BookMark> getBookMarksByCategory(BookMarkCategory category) {
		return bookMarksByCategory.get(category);
	}

	public void restoreCategoriesWithBookMarks(Map<String, String> state, MessageService messageService) {
		for (Entry<String, String> entry : state.entrySet()) {
			if (!isCategoryWithDate(entry)) {
				BookMarkCategory category = createCategory(entry);
				bookMarksByCategory.put(category, new HashSet<>());
				for (String bookMarkText : getBookMarks(entry)) {
					addBookMarksByCategory(messageService, category, bookMarkText);
				}
			}
		}
	}

	public void restoreCategoriesWithDate(Map<String, String> state) {
		for (Entry<String, String> entry : state.entrySet()) {
			if (isCategoryWithDate(entry)) {
				getCategories().put(createCategoryFromPrefixedEntry(entry), createDate(entry));
			}
		}
	}

	public BookMarkCategory getDefaultCategory() {
		return DEFAULT_CATEGORY;
	}

	private boolean isCategoryWithDate(Entry<String, String> entry) {
		return entry.getKey().startsWith("Cat:");
	}

	private BookMarkCategory createCategoryFromPrefixedEntry(Entry<String, String> entry) {
		return new BookMarkCategory(entry.getKey().replace("Cat:", ""), this);
	}

	private LocalDateTime createDate(Entry<String, String> entry) {
		return LocalDateTime.parse(entry.getValue());
	}

	private BookMarkCategory createCategory(Entry<String, String> entry) {
		return new BookMarkCategory(entry.getKey().toString(), this);
	}

	private String[] getBookMarks(Entry<String, String> entry) {
		return entry.getValue().substring(0, entry.getValue().length() - 1).split(";");
	}

	private void addBookMarksByCategory(MessageService messageService, BookMarkCategory category, String bookMarkText) {
		String[] bookAndOthers = bookMarkText.split(":");
		String[] chapterAndVerses = getChapterAndVerses(bookAndOthers);
		List<Integer> verses = getVerses(chapterAndVerses);
		Chapter chapter = getChapter(bookAndOthers, chapterAndVerses);
		BookMark bookMark = createBookMark(messageService, category, verses, chapter);
		getBookMarksByCategory(category).add(bookMark);
	}

	private String[] getChapterAndVerses(String[] bookAndOthers) {
		return bookAndOthers[1].split("\\(");
	}

	private List<Integer> getVerses(String[] chapterAndVerses) {
		String versesAsString = chapterAndVerses[1].substring(0, chapterAndVerses[1].length() - 1);
		List<Integer> verses = BookMarkUtil.getVersesAsIntegers(versesAsString);
		return verses;
	}

	private Chapter getChapter(String[] bookAndOthers, String[] chapterAndVerses) {
		String chapterAsString = chapterAndVerses[0];
		Chapter chapter = Bible.getChapter(bookAndOthers[0], Integer.valueOf(chapterAsString));
		return chapter;
	}

	private BookMark createBookMark(MessageService messageService, BookMarkCategory category, List<Integer> verses,
			Chapter chapter) {
		return new BookMark(chapter, verses, category, messageService);
	}

	private boolean isCategoryExist(BookMarkCategory category) {
		return bookMarksByCategory.containsKey(category);
	}

}
