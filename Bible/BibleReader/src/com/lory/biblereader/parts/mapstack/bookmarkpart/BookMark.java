package com.lory.biblereader.parts.mapstack.bookmarkpart;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.Collections;

import com.lory.biblereader.i18n.MessageService;
import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.TreeElement;

public class BookMark implements TreeElement {
	private Chapter chapter;
	private Integer verse;
	private BookMarkCategory category;
	private LocalDateTime date;
	private MessageService messageService;

	public BookMark(Chapter chapter, Integer verse, MessageService messageService) {
		this.chapter = chapter;
		this.verse = verse;
		this.date = LocalDateTime.now();
		this.messageService = messageService;
	}

	public BookMark(Chapter chapter, Integer verse, BookMarkCategory category, MessageService messageService) {
		this.chapter = chapter;
		this.verse = verse;
		this.category = category;
		this.date = LocalDateTime.now();
		this.messageService = messageService;
	}

	public Chapter getChapter() {
		return chapter;
	}

	public Integer getVerse() {
		return verse;
	}

	public BookMarkCategory getCategory() {
		return category;
	}

	public LocalDateTime getDate() {
		return date;
	}

	@Override
	public String getText() {
		return messageService.getMessage(chapter.getBook().getTitle()) + ": " + chapter.getId();
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
		return "BookMark [chapter=" + chapter + ", verse=" + verse + ", category=" + category + ", date=" + date + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((category == null) ? 0 : category.hashCode());
		result = prime * result + ((chapter == null) ? 0 : chapter.hashCode());
		result = prime * result + ((verse == null) ? 0 : verse.hashCode());
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
		if (verse == null) {
			if (other.verse != null) {
				return false;
			}
		} else if (!verse.equals(other.verse)) {
			return false;
		}
		return true;
	}

}
