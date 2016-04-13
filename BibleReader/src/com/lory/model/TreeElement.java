package com.lory.model;

import java.util.Collection;

/**
 * Represents an element in an SWT tree.
 *
 * @author lorandKutvolgyi
 *
 */
public interface TreeElement {

    /**
     * Returns the text to show in the tree.
     *
     * @return the text to show in the tree
     */
    String getContent();

    /**
     * Returns the subelements.
     *
     * @return the subelement
     */
    Collection<? extends TreeElement> getChildren();

    /**
     * Returns the parent.
     *
     * @return the parent
     */
    TreeElement getParent();
}
