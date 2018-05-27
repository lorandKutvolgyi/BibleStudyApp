package com.lory.biblereader.parts.leftstack.bookspart.treesorter;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;

import com.lory.biblereader.model.Book;
import com.lory.biblereader.model.Testament;

public abstract class AbstractBooksOrder extends ViewerComparator {
	private List<Testament> testaments = new ArrayList<>();
	private List<Book> books = new ArrayList<>();

	public AbstractBooksOrder() {
		testaments.add(Testament.OLD_TESTAMENT);
		testaments.add(Testament.NEW_TESTAMENT);
	}

	@Override
	public final int compare(Viewer viewer, Object first, Object second) {
		if (first instanceof Book) {
			assert second instanceof Book;
			return books.indexOf(first) - books.indexOf(second);
		}
		assert first instanceof Testament;
		assert second instanceof Testament;
		return testaments.indexOf(first) - testaments.indexOf(second);
	}

	public List<Book> getBooks() {
		return books;
	}
}
