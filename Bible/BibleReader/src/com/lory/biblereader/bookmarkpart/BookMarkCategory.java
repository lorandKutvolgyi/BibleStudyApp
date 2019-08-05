package com.lory.biblereader.bookmarkpart;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import com.lory.biblereader.base.translation.model.TreeElement;

public class BookMarkCategory implements TreeElement {
	private String label;
	private Set<BookMark> bookMarks = new HashSet<>();

	public BookMarkCategory(String label) {
		this.label = label;
	}

	@Override
	public String getText() {
		return label;
	}

	@Override
	public Collection<? extends TreeElement> getChildren() {
		return bookMarks;
	}

	@Override
	public TreeElement getParent() {
		return null;
	}

	public void add(BookMark bookMark) {
		bookMarks.add(bookMark);
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((label == null) ? 0 : label.hashCode());
		return result;
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
		if (label == null) {
			if (other.label != null) {
				return false;
			}
		} else if (!label.equals(other.label)) {
			return false;
		}
		return true;
	}

}
