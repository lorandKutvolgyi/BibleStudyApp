package com.lory.biblereader.parts.upperrightstack.bookmarkpart;

import java.util.ArrayList;
import java.util.List;
import java.util.Observable;

public class BookMarkUtil extends Observable {

	public static String getVerrsesAsString(BookMark bookMark) {
		return getVersesAsString(bookMark.getVerses());
	}

	public static String getVersesAsString(List<Integer> verses) {
		StringBuilder result = new StringBuilder();
		Integer previous = null;
		for (Integer verse : verses) {
			if (previous != null) {
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
			} else {
				result.append(verse);
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
			if (part.contains("-")) {
				String[] subPart = part.split("-");
				for (int i = Integer.parseInt(subPart[0]); i <= Integer.parseInt(subPart[1]); i++) {
					result.add(i);
				}
			} else {
				result.add(Integer.parseInt(part));
			}
		}
		return result;
	}
}
