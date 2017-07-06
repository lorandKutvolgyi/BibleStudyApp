package com.lory.biblereader.parts.textpart.eventhandler;

import org.eclipse.e4.core.di.annotations.Creatable;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.widgets.Text;

@Creatable
public class TextSearchListener implements ModifyListener {
	private StyledText bibleText;

	@Override
	public void modifyText(ModifyEvent e) {
		String searchText = ((Text) e.getSource()).getText();
		if (searchText.length() > 1)
			System.out.println(bibleText.getText().replaceAll("[0-9]+", "").replaceAll("[\n]+", " ").toLowerCase()
					.contains(searchText.toLowerCase()));
	}

	public void setBibleText(StyledText text) {
		this.bibleText = text;
	}

}
