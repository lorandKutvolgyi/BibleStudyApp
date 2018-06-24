package com.lory.biblereader.parts.middlestack.textpart.eventhandler;

import com.lory.biblereader.model.dao.BibleDaoFactory;

public class JavaScriptCreator {

	public String getVerseChangeScript(VerseContext verseContext) {
		if (verseContext == null) {
			return null;
		}
		return createScript(verseContext).toString();
	}

	private StringBuilder createScript(VerseContext verseContext) {
		StringBuilder script = new StringBuilder();
		script.append("var span = document.querySelector('#" + verseContext.getTranslation() + " span');");
		script.append("span.setAttribute('data-book','" + verseContext.getBookTitle() + "');");
		script.append("span.setAttribute('data-chapter','" + verseContext.getChapterId() + "');");
		script.append("span.setAttribute('data-verse','" + verseContext.getVerseId() + "');");
		script.append("span.innerHTML = '" + verseContext.getChapterId() + ":" + verseContext.getVerseId() + "<br/>"
				+ BibleDaoFactory.getInstance().findVerseByContext(verseContext) + "';");
		return script;
	}
}
