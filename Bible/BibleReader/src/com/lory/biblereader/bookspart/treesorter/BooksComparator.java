package com.lory.biblereader.bookspart.treesorter;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

@Creatable
@Singleton
public class BooksComparator {

	private HistoricalBooksOrder historicalBooksOrder;
	private CanonicalBooksOrder canonicalicalBooksOrder;

	private final List<AbstractBooksOrder> comparators = new ArrayList<>();
	private int index = 0;

	@Inject
	public BooksComparator(HistoricalBooksOrder historicalBooksOrder, CanonicalBooksOrder canonicalicalBooksOrder) {
		this.historicalBooksOrder = historicalBooksOrder;
		this.canonicalicalBooksOrder = canonicalicalBooksOrder;
	}

	@PostConstruct
	public void init() {
		comparators.add(canonicalicalBooksOrder);
		comparators.add(historicalBooksOrder);
	}

	public List<AbstractBooksOrder> getComparators() {
		return comparators;
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
}
