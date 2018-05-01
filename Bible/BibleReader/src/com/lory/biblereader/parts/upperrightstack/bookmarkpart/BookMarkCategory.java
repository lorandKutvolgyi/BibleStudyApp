package com.lory.biblereader.parts.upperrightstack.bookmarkpart;

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

	@Override
	public int hashCode() {
		return category == null ? 0 : category.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		BookMarkCategory other = (BookMarkCategory) obj;
		if (category == null) {
			if (other.category != null) {
				return false;
			}
		} else if (!category.equals(other.category)) {
			return false;
		}
		return true;
	}

}
