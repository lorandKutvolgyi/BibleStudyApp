package com.lory.biblereader.parts.middlestack.textpart.contextmenu;

import org.eclipse.swt.widgets.Shell;

import com.lory.biblereader.model.Chapter;
import com.lory.biblereader.model.dao.BibleDao;

public class HtmlCreator {

	private Shell shell;
	private Chapter chapter;
	private String verse;
	private BibleDao bibleDao;

	public HtmlCreator(Shell shell, Chapter chapter, String verse, BibleDao bibleDao) {
		this.shell = shell;
		this.chapter = chapter;
		this.verse = verse;
		this.bibleDao = bibleDao;
	}

	// @formatter:off
	public String createStartHtml() {
		return    "<head>"
				+     "<style>" 
		        +         "span {"
		        +             "display: inline-block;"
		        +             "width:" + shell.getSize().x * .7
				+         "}"
				+         "button {"
		        +             "vertical-align: top;"
				+             "margin-right:20;"
				+             "margin-left:20;"
				+         "}"
				+     "</style>"
				+     "<script>"
				+         "function previousOnclick() {"
				+              "var divElement = document.getElementById(arguments[0]);"
				+              "var translation = arguments[0];"
				+              "var span = document.querySelector('#'+translation+' span');"
				+              "var book = span.getAttribute('data-book');"
				+              "var chapter = span.getAttribute('data-chapter');"
				+              "var verse = span.getAttribute('data-verse');"
				+              "step('previous',translation,book,chapter,verse);"
				+         "};"
				+         "function nextOnclick() {"
				+              "var divElement = document.getElementById(arguments[0]);"
				+              "var translation = arguments[0];"
				+              "var span = document.querySelector('#'+translation+' span');"
				+              "var book = span.getAttribute('data-book');"
				+              "var chapter = span.getAttribute('data-chapter');"
				+              "var verse = span.getAttribute('data-verse');"
				+              "step('next',translation,book,chapter,verse);"
				+         "}"
				+     "</script>"
				+ "</head>"
				+ "<body>";
	}

	public String createHtml(String translation) {
		 return       ""
		        +     "<h4>" + translation + "</h4>"
		        +     "<div id='" + translation + "'>"
				+         "<button name='previous' class='" + translation 
				+         "' onclick='previousOnclick(\"" + translation  +"\")'><</button>"
				+         "<span data-book='"+chapter.getBook().getTitle()+"' data-chapter='"+chapter.getId()+"' data-verse='"+verse+"'>" 
				+             bibleDao.findVerseByChapterAndId(chapter, verse, translation) 
				+         "</span>"
				+         "<button name='next' class='" + translation
				+         "' onclick='nextOnclick(\"" + translation  +"\")'>></button>"
				+     "</div>"
				;
		
	}
	
	public String createEndHtml() {
		return    "</body>";
	}
}
