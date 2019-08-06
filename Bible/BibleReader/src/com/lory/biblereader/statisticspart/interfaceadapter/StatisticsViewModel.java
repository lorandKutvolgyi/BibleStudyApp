package com.lory.biblereader.statisticspart.interfaceadapter;

import java.util.Observable;

import javax.inject.Singleton;

import org.eclipse.e4.core.di.annotations.Creatable;

@Creatable
@Singleton
public class StatisticsViewModel extends Observable {

	private String chapter = "";
	private String translation = "";

	private String shortestVerseLabel = "";
	private String longestVerseLabel = "";
	private String numberOfVersesLabel = "";
	private String numberOfCharactersLabel = "";
	private String numberOfWordsLabel = "";
	private String shortestBookByChaptersLabel = "";
	private String longestBookByChaptersLabel = "";
	private String shortestBookByCharactersLabel = "";
	private String longestBookByCharactersLabel = "";
	private String shortestChapterByVersesLabel = "";
	private String longestChapterByVersesLabel = "";
	private String shortestChapterByCharactersLabel = "";
	private String longestChapterByCharactersLabel = "";
	private String shortestVerseInAllBooksLabel = "";
	private String longestVerseInAllBooksLabel = "";
	private String numberOfAllBooksLabel = "";
	private String numberOfAllChaptersLabel = "";
	private String numberOfAllVersesLabel = "";
	private String numberOfAllCharactersLabel = "";

	private String shortestVerse = "";
	private String longestVerse = "";
	private String numberOfVerses = "";
	private String numberOfCharacters = "";
	private String numberOfWords = "";
	private String shortestBookByChapters = "";
	private String longestBookByChapters = "";
	private String shortestBookByCharacters = "";
	private String longestBookByCharacters = "";
	private String shortestChapterByVerses = "";
	private String longestChapterByVerses = "";
	private String shortestChapterByCharacters = "";
	private String longestChapterByCharacters = "";
	private String shortestVerseInAllBook = "";
	private String longestVerseInAllBooks = "";
	private String numberOfAllBooks = "";
	private String numberOfAllChapters = "";
	private String numberOfAllVerses = "";
	private String numberOfAllCharacters = "";

	public void setModelChanged() {
		setChanged();
		notifyObservers();
	}

	public String getChapter() {
		return chapter;
	}

	public void setChapter(String chapter) {
		this.chapter = chapter;
	}

	public String getTranslation() {
		return translation;
	}

	public void setTranslation(String translation) {
		this.translation = translation;
	}

	public String getShortestVerseLabel() {
		return shortestVerseLabel;
	}

	public void setShortestVerseLabel(String shortestVerseLabel) {
		this.shortestVerseLabel = shortestVerseLabel;
	}

	public String getLongestVerseLabel() {
		return longestVerseLabel;
	}

	public void setLongestVerseLabel(String longestVerseLabel) {
		this.longestVerseLabel = longestVerseLabel;
	}

	public String getNumberOfVersesLabel() {
		return numberOfVersesLabel;
	}

	public void setNumberOfVersesLabel(String numberOfVersesLabel) {
		this.numberOfVersesLabel = numberOfVersesLabel;
	}

	public String getNumberOfCharactersLabel() {
		return numberOfCharactersLabel;
	}

	public void setNumberOfCharactersLabel(String numberOfCharactersLabel) {
		this.numberOfCharactersLabel = numberOfCharactersLabel;
	}

	public String getNumberOfWordsLabel() {
		return numberOfWordsLabel;
	}

	public void setNumberOfWordsLabel(String numberOfWordsLabel) {
		this.numberOfWordsLabel = numberOfWordsLabel;
	}

	public String getShortestBookByChaptersLabel() {
		return shortestBookByChaptersLabel;
	}

	public void setShortestBookByChaptersLabel(String shortestBookByChaptersLabel) {
		this.shortestBookByChaptersLabel = shortestBookByChaptersLabel;
	}

	public String getLongestBookByChaptersLabel() {
		return longestBookByChaptersLabel;
	}

	public void setLongestBookByChaptersLabel(String longestBookByChaptersLabel) {
		this.longestBookByChaptersLabel = longestBookByChaptersLabel;
	}

	public String getShortestBookByCharactersLabel() {
		return shortestBookByCharactersLabel;
	}

	public void setShortestBookByCharactersLabel(String shortestBookByCharactersLabel) {
		this.shortestBookByCharactersLabel = shortestBookByCharactersLabel;
	}

	public String getLongestBookByCharactersLabel() {
		return longestBookByCharactersLabel;
	}

	public void setLongestBookByCharactersLabel(String longestBookByCharactersLabel) {
		this.longestBookByCharactersLabel = longestBookByCharactersLabel;
	}

	public String getShortestChapterByVersesLabel() {
		return shortestChapterByVersesLabel;
	}

	public void setShortestChapterByVersesLabel(String shortestChapterByVersesLabel) {
		this.shortestChapterByVersesLabel = shortestChapterByVersesLabel;
	}

	public String getLongestChapterByVersesLabel() {
		return longestChapterByVersesLabel;
	}

	public void setLongestChapterByVersesLabel(String longestChapterByVersesLabel) {
		this.longestChapterByVersesLabel = longestChapterByVersesLabel;
	}

	public String getShortestChapterByCharactersLabel() {
		return shortestChapterByCharactersLabel;
	}

	public void setShortestChapterByCharactersLabel(String shortestChapterByCharactersLabel) {
		this.shortestChapterByCharactersLabel = shortestChapterByCharactersLabel;
	}

	public String getLongestChapterByCharactersLabel() {
		return longestChapterByCharactersLabel;
	}

	public void setLongestChapterByCharactersLabel(String longestChapterByCharactersLabel) {
		this.longestChapterByCharactersLabel = longestChapterByCharactersLabel;
	}

	public String getShortestVerseInAllBookLabel() {
		return shortestVerseInAllBooksLabel;
	}

	public void setShortestVerseInAllBooksLabel(String shortestVerseInAllBooksLabel) {
		this.shortestVerseInAllBooksLabel = shortestVerseInAllBooksLabel;
	}

	public String getLongestVerseInAllBooksLabel() {
		return longestVerseInAllBooksLabel;
	}

	public void setLongestVerseInAllBooksLabel(String longestVerseInAllBooksLabel) {
		this.longestVerseInAllBooksLabel = longestVerseInAllBooksLabel;
	}

	public String getNumberOfAllBooksLabel() {
		return numberOfAllBooksLabel;
	}

	public void setNumberOfAllBooksLabel(String numberOfAllBooksLabel) {
		this.numberOfAllBooksLabel = numberOfAllBooksLabel;
	}

	public String getNumberOfAllChaptersLabel() {
		return numberOfAllChaptersLabel;
	}

	public void setNumberOfAllChaptersLabel(String numberOfAllChaptersLabel) {
		this.numberOfAllChaptersLabel = numberOfAllChaptersLabel;
	}

	public String getNumberOfAllVersesLabel() {
		return numberOfAllVersesLabel;
	}

	public void setNumberOfAllVersesLabel(String numberOfAllVersesLabel) {
		this.numberOfAllVersesLabel = numberOfAllVersesLabel;
	}

	public String getNumberOfAllCharactersLabel() {
		return numberOfAllCharactersLabel;
	}

	public void setNumberOfAllCharactersLabel(String numberOfAllCharactersLabel) {
		this.numberOfAllCharactersLabel = numberOfAllCharactersLabel;
	}

	public String getShortestVerse() {
		return shortestVerse;
	}

	public void setShortestVerse(String shortestVerse) {
		this.shortestVerse = shortestVerse;
	}

	public String getLongestVerse() {
		return longestVerse;
	}

	public void setLongestVerse(String longestVerse) {
		this.longestVerse = longestVerse;
	}

	public String getNumberOfVerses() {
		return numberOfVerses;
	}

	public void setNumberOfVerses(String numberOfVerses) {
		this.numberOfVerses = numberOfVerses;
	}

	public String getNumberOfCharacters() {
		return numberOfCharacters;
	}

	public void setNumberOfCharacters(String numberOfCharacters) {
		this.numberOfCharacters = numberOfCharacters;
	}

	public String getNumberOfWords() {
		return numberOfWords;
	}

	public void setNumberOfWords(String numberOfWords) {
		this.numberOfWords = numberOfWords;
	}

	public String getShortestBookByChapters() {
		return shortestBookByChapters;
	}

	public void setShortestBookByChapters(String shortestBookByChapters) {
		this.shortestBookByChapters = shortestBookByChapters;
	}

	public String getLongestBookByChapters() {
		return longestBookByChapters;
	}

	public void setLongestBookByChapters(String longestBookByChapters) {
		this.longestBookByChapters = longestBookByChapters;
	}

	public String getShortestBookByCharacters() {
		return shortestBookByCharacters;
	}

	public void setShortestBookByCharacters(String shortestBookByCharacters) {
		this.shortestBookByCharacters = shortestBookByCharacters;
	}

	public String getLongestBookByCharacters() {
		return longestBookByCharacters;
	}

	public void setLongestBookByCharacters(String longestBookByCharacters) {
		this.longestBookByCharacters = longestBookByCharacters;
	}

	public String getShortestChapterByVerses() {
		return shortestChapterByVerses;
	}

	public void setShortestChapterByVerses(String shortestChapterByVerses) {
		this.shortestChapterByVerses = shortestChapterByVerses;
	}

	public String getLongestChapterByVerses() {
		return longestChapterByVerses;
	}

	public void setLongestChapterByVerses(String longestChapterByVerses) {
		this.longestChapterByVerses = longestChapterByVerses;
	}

	public String getShortestChapterByCharacters() {
		return shortestChapterByCharacters;
	}

	public void setShortestChapterByCharacters(String shortestChapterByCharacters) {
		this.shortestChapterByCharacters = shortestChapterByCharacters;
	}

	public String getLongestChapterByCharacters() {
		return longestChapterByCharacters;
	}

	public void setLongestChapterByCharacters(String longestChapterByCharacters) {
		this.longestChapterByCharacters = longestChapterByCharacters;
	}

	public String getShortestVerseInAllBook() {
		return shortestVerseInAllBook;
	}

	public void setShortestVerseInAllBook(String shortestVerseInAllBook) {
		this.shortestVerseInAllBook = shortestVerseInAllBook;
	}

	public String getLongestVerseInAllBooks() {
		return longestVerseInAllBooks;
	}

	public void setLongestVerseInAllBooks(String longestVerseInAllBooks) {
		this.longestVerseInAllBooks = longestVerseInAllBooks;
	}

	public String getNumberOfAllBooks() {
		return numberOfAllBooks;
	}

	public void setNumberOfAllBooks(String numberOfAllBooks) {
		this.numberOfAllBooks = numberOfAllBooks;
	}

	public String getNumberOfAllChapters() {
		return numberOfAllChapters;
	}

	public void setNumberOfAllChapters(String numberOfAllChapters) {
		this.numberOfAllChapters = numberOfAllChapters;
	}

	public String getNumberOfAllVerses() {
		return numberOfAllVerses;
	}

	public void setNumberOfAllVerses(String numberOfAllVerses) {
		this.numberOfAllVerses = numberOfAllVerses;
	}

	public String getNumberOfAllCharacters() {
		return numberOfAllCharacters;
	}

	public void setNumberOfAllCharacters(String numberOfAllCharacters) {
		this.numberOfAllCharacters = numberOfAllCharacters;
	}

}
