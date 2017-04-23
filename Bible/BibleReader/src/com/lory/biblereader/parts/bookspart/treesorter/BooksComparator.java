package com.lory.biblereader.parts.bookspart.treesorter;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

import com.lory.biblereader.model.Book;

@Creatable
@Singleton
public class BooksComparator {
	private final List<AbstractBooksOrder> comparators = new ArrayList<>();
	private int index = 0;
	@Inject
	private HistoricalBooksOrder historicalBooksOrder;
	@Inject
	private CanonicalBooksOrder canonicalicalBooksOrder;

	@PostConstruct
	public void init() {
		comparators.add(canonicalicalBooksOrder);
		comparators.add(historicalBooksOrder);
	}

	public List<AbstractBooksOrder> getComparators() {
		return comparators;
	}

	public int getIndex() {
		return index;
	}

	public AbstractBooksOrder next() {
		if (index == comparators.size() - 1) {
			index = -1;
		}
		return comparators.get(++index);
	}

	public AbstractBooksOrder current() {
		return comparators.get(index);
	}

	public Book nextBook(Book book) {
		return current().getBooks().get(current().getBooks().indexOf(book));
	}
}
