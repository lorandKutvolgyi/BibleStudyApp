package com.lory.biblereader.perspective.model;

import java.util.Collection;
import java.util.EnumSet;
import java.util.Set;

/**
 * Represents the Testaments of the Bible.
 *
 * @author lorandKutvolgyi
 *
 */
public enum Testament implements TreeElement {
    OLD_TESTAMENT("OldTestament") {
        private final Set<? extends Book> books = EnumSet.allOf(OldTestamentBooks.class);

        @Override
        public Set<? extends Book> getBooks() {
            return books;
        }

    },
    NEW_TESTAMENT("NewTestament") {
        private final Set<? extends Book> books = EnumSet.allOf(NewTestamentBooks.class);

        @Override
        public Set<? extends Book> getBooks() {
            return books;
        }
    };
    private String name;

    private Testament(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    @Override
    public String getText() {
        return name;
    }

    @Override
    public Collection<? extends TreeElement> getChildren() {
        return getBooks();
    }

    @Override
    public TreeElement getParent() {
        return null;
    }

    public Book getBook(String name) {
        for (Book book : getBooks()) {
            if (name != null && name.equals(book.getTitle())) {
                return book;
            }
        }
        return null;
    }

    public static Testament getTestament(String name) {
        for (Testament testament : Testament.values()) {
            String testamentName = testament.getName();
            if (testamentName.equals(name)) {
                return testament;
            }
        }
        return null;
    }

    public abstract Set<? extends Book> getBooks();

}
