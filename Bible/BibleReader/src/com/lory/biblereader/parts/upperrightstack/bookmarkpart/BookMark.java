package com.lory.biblereader.parts.upperrightstack.bookmarkpart;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import javax.annotation.PostConstruct;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.TreeElement;

public class BookMark implements TreeElement {

	private int chapterId;
	private String bookTitle;
	private List<Integer> verses;
	private BookMarkCategory category;
	private LocalDateTime date;
	private MessageService messageService;

	public BookMark(int chapterId, String bookTitle, List<Integer> verses, BookMarkCategory category,
			MessageService messageService) {
		this.chapterId = chapterId;
		this.bookTitle = bookTitle;
		this.verses = verses;
		this.category = category;
		this.date = LocalDateTime.now();
		this.messageService = messageService;
	}

	@PostConstruct
	public void setThisToParent() {
		category.add(this);
	}

	public int getChapterId() {
		return chapterId;
	}

	public String getBookTitle() {
		return bookTitle;
	}

	public List<Integer> getVerses() {
		return verses;
	}

	public BookMarkCategory getCategory() {
		return category;
	}

	public LocalDateTime getDate() {
		return date;
	}

	@Override
	public String getText() {
		return messageService.getMessage(bookTitle) + " " + chapterId + ":" + BookMarkUtil.getVersesAsString(verses);
	}

	@Override
	public Collection<? extends TreeElement> getChildren() {
		return Collections.emptySet();
	}

	@Override
	public TreeElement getParent() {
		return category;
	}

	@Override
	public String toString() {
		return "";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((bookTitle == null) ? 0 : bookTitle.hashCode());
		result = prime * result + ((category == null) ? 0 : category.hashCode());
		result = prime * result + chapterId;
		result = prime * result + ((verses == null) ? 0 : verses.hashCode());
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
		BookMark other = (BookMark) obj;
		if (bookTitle == null) {
			if (other.bookTitle != null) {
				return false;
			}
		} else if (!bookTitle.equals(other.bookTitle)) {
			return false;
		}
		if (category == null) {
			if (other.category != null) {
				return false;
			}
		} else if (!category.equals(other.category)) {
			return false;
		}
		if (chapterId != other.chapterId) {
			return false;
		}
		if (verses == null) {
			if (other.verses != null) {
				return false;
			}
		} else if (!verses.equals(other.verses)) {
			return false;
		}
		return true;
	}

}
