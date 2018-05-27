package com.lory.biblereader.parts.middlestack.textpart;

public class PartIdProvider {

	private static long partId = 1;

	static long getPartId() {
		return partId++;
	}
}
