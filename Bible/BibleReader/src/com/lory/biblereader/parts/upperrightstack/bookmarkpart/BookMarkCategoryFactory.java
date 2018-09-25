package com.lory.biblereader.parts.upperrightstack.bookmarkpart;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class BookMarkCategoryFactory {

	private static Map<String, BookMarkCategory> categories = new HashMap<>();

	public static BookMarkCategory getBookMarkCategory(String label) {
		BookMarkCategory category = categories.get(label);
		if (category != null) {
			return category;
		}
		BookMarkCategory newCategory = new BookMarkCategory(label);
		categories.put(newCategory.getText(), newCategory);
		return newCategory;
	}

	public static Collection<BookMarkCategory> getCategories() {
		return categories.values();
	}

	public static void add(BookMarkCategory category) {
		categories.put(category.getText(), category);
	}
}
