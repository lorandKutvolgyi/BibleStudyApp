package com.lory.biblereader.parts.mapstack.bookmarkpart;

import java.util.Collection;

import com.lory.biblereader.model.TreeElement;

public class BookMarkCategory implements TreeElement, Comparable<BookMarkCategory> {
	private String category;
	private BookMarkManager bookMarkManager;

	public BookMarkCategory(String category, BookMarkManager bookMarkManager) {
		this.category = category;
		this.bookMarkManager = bookMarkManager;
	}

	@Override
	public String getText() {
		return category;
	}

	@Override
	public Collection<? extends TreeElement> getChildren() {
		return bookMarkManager.getBookMarksByCategory(this);
	}

	@Override
	public TreeElement getParent() {
		return null;
	}

	@Override
	public int compareTo(BookMarkCategory bookMarkCategory) {
		return category.compareTo(bookMarkCategory.getText());
	}

}
