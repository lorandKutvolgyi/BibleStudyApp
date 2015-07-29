package model;

public interface Books {

    /**
     * Returns the title of Book in the used language.
     * 
     * @return title of book
     */
    public String getTitle();

    /**
     * Returns the container Testament(New or Old)
     * 
     * @return container Testament
     */
    public Testament getTestament();

}
