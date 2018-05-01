package com.lory.biblereader.parts.upperrightstack.bookmarkpart;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.TreeElement;

public class BookMark implements TreeElement {
	private Chapter chapter;
	private List<Integer> verses;
	private BookMarkCategory category;
	private LocalDateTime date;
	private MessageService messageService;

	public BookMark(Chapter chapter, List<Integer> verses, BookMarkCategory category, MessageService messageService) {
		this.chapter = chapter;
		this.verses = verses;
		this.category = category;
		this.date = LocalDateTime.now();
		this.messageService = messageService;
	}

	public Chapter getChapter() {
		return chapter;
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
		return messageService.getMessage(chapter.getBook().getTitle()) + ": " + chapter.getId() + " "
				+ BookMarkUtil.getVersesAsString(verses);
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
		return "BookMark [chapter=" + chapter + ", verses=" + verses + ", category=" + category + ", date=" + date
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((category == null) ? 0 : category.hashCode());
		result = prime * result + ((chapter == null) ? 0 : chapter.hashCode());
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
		if (category == null) {
			if (other.category != null) {
				return false;
			}
		} else if (!category.equals(other.category)) {
			return false;
		}
		if (chapter == null) {
			if (other.chapter != null) {
				return false;
			}
		} else if (!chapter.equals(other.chapter)) {
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
