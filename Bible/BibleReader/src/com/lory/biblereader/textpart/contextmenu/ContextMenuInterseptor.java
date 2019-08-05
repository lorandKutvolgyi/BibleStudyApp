
package com.lory.biblereader.textpart.contextmenu;

import javax.inject.Inject;

import org.eclipse.e4.core.di.annotations.Evaluate;

import com.lory.biblereader.textpart.TextPartManager;

public class ContextMenuInterseptor {

	@Inject
	private TextPartManager textPartManager;

	@Evaluate
	public boolean evaluate() {
		return textPartManager.getComparingVerseId() != null;
	}
}
