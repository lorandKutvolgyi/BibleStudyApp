package com.lory.biblereader.base.translation.model;

import java.util.Collection;

public interface TreeElement {

	String getText();

	Collection<? extends TreeElement> getChildren();

	TreeElement getParent();
}
