package com.lory.biblereader.textpart;

import com.lory.biblereader.base.translation.model.dao.BibleDao;
import com.lory.biblereader.textpart.contextmenu.VerseContext;

public class JavaScriptCreator {

	private JavaScriptCreator() {
	}

	public static String getVerseIdScript(int x, int y) {
		StringBuilder script = new StringBuilder();

		script.append("   if (!Element.prototype.matches) {                                                         ");
		script.append("       Element.prototype.matches =                                                           ");
		script.append("           Element.prototype.msMatchesSelector || Element.prototype.webkitMatchesSelector;   ");
		script.append("   }                                                                                         ");

		script.append("   if (!Element.prototype.closest) {                                                         ");
		script.append("       Element.prototype.closest = function(s) {                                             ");
		script.append("          var el = this;                                                                     ");
		script.append("          if (!document.documentElement.contains(el)) {                                      ");
		script.append("              return null;                                                                   ");
		script.append("          }                                                                                  ");
		script.append("          do {                                                                               ");
		script.append("              if (el.matches(s)){                                                            ");
		script.append("                  return el;                                                                 ");
		script.append("              }                                                                              ");
		script.append("              el = el.parentElement || el.parentNode;                                        ");
		script.append("          } while (el !== null && el.nodeType === 1);                                        ");
		script.append("          return null;                                                                       ");
		script.append("       };                                                                                    ");
		script.append("   }                                                                                         ");

		script.append("   var element = document.elementFromPoint(" + x + "," + y + ");                             ");
		script.append("   if (element.closest('div') !== null) {                                                     ");
		script.append("       return element.closest('div').getAttribute('id');                                     ");
		script.append("   }                                                                                         ");

		return script.toString();
	}

	public static String getVerseChangeScript(VerseContext verseContext, BibleDao bibleDao) {
		if (verseContext == null) {
			return null;
		}
		return createVerseChangeScript(verseContext, bibleDao).toString();
	}

	private static StringBuilder createVerseChangeScript(VerseContext verseContext, BibleDao bibleDao) {
		StringBuilder script = new StringBuilder();

		script.append("var span = document.querySelector('#" + verseContext.getTranslation() + " span');");
		script.append("span.setAttribute('data-book','" + verseContext.getBookTitle() + "');");
		script.append("span.setAttribute('data-chapter','" + verseContext.getChapterId() + "');");
		script.append("span.setAttribute('data-verse','" + verseContext.getVerseId() + "');");
		script.append("span.innerHTML = '<i>" + verseContext.getChapterId() + ":" + verseContext.getVerseId() + "</i>");
		script.append("<br/>" + bibleDao.findVerseByContext(verseContext) + "';");

		return script;
	}

	public static String scrollToFirstMark() {
		return "if(document.readyState === 'complete'){document.getElementsByTagName('mark')[0].scrollIntoView();}";
	}
}
