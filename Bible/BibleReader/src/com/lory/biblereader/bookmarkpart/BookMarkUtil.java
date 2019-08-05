package com.lory.biblereader.bookmarkpart;

import java.util.ArrayList;
import java.util.List;
import java.util.Observable;

public class BookMarkUtil extends Observable {

	public static String getVersesAsString(List<Integer> verses) {
		StringBuilder result = new StringBuilder();
		Integer previous = null;
		for (Integer verse : verses) {
			if (isFirstVerse(previous)) {
				handleFirstVerse(result, verse);
			} else {
				handleNotFirstVerses(verses, result, previous, verse);
			}
			previous = verse;
		}
		return result.toString();
	}

	public static List<Integer> getVersesAsIntegers(String verses) {
		List<Integer> result = new ArrayList<>();
		String[] parts = verses.split(",");
		for (String part : parts) {
			if (part.isEmpty()) {
				continue;
			}
			if (isRange(part)) {
				addElementsOfRange(result, part);
			} else {
				addSingleVerse(result, part);
			}
		}
		return result;
	}

	private static boolean isFirstVerse(Integer previous) {
		return previous == null;
	}

	private static void handleFirstVerse(StringBuilder result, Integer verse) {
		result.append(verse);
	}

	private static void handleNotFirstVerses(List<Integer> verses, StringBuilder result, Integer previous,
			Integer verse) {
		if (previous + 1 == verse) {
			if (!result.toString().endsWith("-")) {
				result.append("-");
			}
			if (verses.get(verses.size() - 1).equals(verse)) {
				result.append(verse);
			}
		} else {
			if (result.toString().endsWith("-")) {
				result.append(previous);
			}
			result.append("," + verse);
		}
	}

	private static boolean isRange(String part) {
		return part.contains("-");
	}

	private static void addElementsOfRange(List<Integer> result, String part) {
		String[] subPart = part.split("-");
		for (int i = Integer.parseInt(subPart[0]); i <= Integer.parseInt(subPart[1]); i++) {
			result.add(i);
		}
	}

	private static void addSingleVerse(List<Integer> result, String part) {
		result.add(Integer.parseInt(part));
	}
}
