#!/bin/bash


shortestBookByChapters()
{
    # assuming the shortest book in every translation consists of 1 chapter
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT book FROM study_app.hunuj GROUP BY book HAVING max(chapter)=1;" | 
         sed '1,2 d' | sed '$d' | sed '$d' | xargs | sed 's/.*/&@1/' | sed 's/ /,/g'
}

longestBookByChapters()
{
    # assuming there is no more than one longest book with the same number of chapters
    psql -h localhost -p 5433 -U postgres -d bible -c\
	 "SELECT distinct study_app.hunuj.book, study_app.hunuj.chapter FROM study_app.hunuj WHERE chapter=
		(SELECT max(chapter) FROM study_app.hunuj);" | sed '1,2 d' | sed '$d' | sed '$d' | xargs | sed 's/ \+| \+/@/' | sed 's/ /,/g'
}

shortestBookByCharacters()
{
    # assuming there are no books with the same number of characters
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT book||'@'||length(cont) FROM (SELECT  book, string_agg(contents,' ') cont FROM study_app.hunuj GROUP BY book) cont_table 
                ORDER BY CHAR_LENGTH(cont)  LIMIT 1;" | sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

longestBookByCharacters()
{
    # assuming there are no books with the same number of characters
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT book||'@'||length(cont) FROM (SELECT  book, string_agg(contents,' ') cont FROM study_app.hunuj GROUP BY book) cont_table 
                ORDER BY CHAR_LENGTH(cont) DESC LIMIT 1;" | sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

shortestChapterByVerses()
{
    psql -h localhost -p 5433 -U postgres -d bible -c\
	 "SELECT book||':'||chapter||'@'||max(verse) FROM study_app.hunuj GROUP BY book, chapter HAVING max(verse)=
                (SELECT min(maxverse) FROM (SELECT book, chapter, max(verse) maxverse FROM study_app.hunuj GROUP BY book, chapter) A);"  | 
                sed '1,2 d' | sed '$d' | sed '$d' | xargs | sed 's/@[^ ]\+ /,/g'
}

longestChapterByVerses()
{
    psql -h localhost -p 5433 -U postgres -d bible -c\
	 "SELECT distinct book||':'||chapter||'@'||verse FROM study_app.hunuj WHERE
                verse=(SELECT max(verse) FROM study_app.hunuj);"| 
                sed '1,2 d' | sed '$d' | sed '$d' | xargs | sed 's/@[^ ]\+ /,/g'
}

shortestChapterByCharacters()
{
    # assuming there are no chapters with the same number of characters
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT book||':'||chapter||'@'||length(cont) FROM (SELECT  book, chapter, string_agg(contents,' ') cont FROM study_app.hunuj 
                 GROUP BY book, chapter) cont_table ORDER BY CHAR_LENGTH(cont)  LIMIT 1;" | sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

longestChapterByCharacters()
{
    # assuming there are no chapters with the same number of characters
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT book||':'||chapter||'@'||length(cont) FROM (SELECT  book, chapter, string_agg(contents,' ') cont FROM study_app.hunuj GROUP 
                BY book, chapter) cont_table ORDER BY CHAR_LENGTH(cont) DESC LIMIT 1;" | sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

shortestVerse()
{
    if [ $1 ]
    then
        psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT verse FROM study_app.hunuj WHERE book='""$1""' AND chapter='""$2""' ORDER BY CHAR_LENGTH(contents) LIMIT 1;" | sed '1,2 d' | 
                 sed '$d' | sed '$d' | xargs
    else
        psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT book||':'||chapter||':'||verse FROM study_app.hunuj ORDER BY CHAR_LENGTH(contents) LIMIT 1;" | sed '1,2 d' | sed '$d' | 
                 sed '$d' | xargs
    fi
}

longestVerse()
{
    if [ $1 ]
    then
        psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT verse FROM study_app.hunuj WHERE book='""$1""' AND chapter='""$2""' ORDER BY CHAR_LENGTH(contents) DESC LIMIT 1;" | 
                 sed '1,2 d' | sed '$d' | sed '$d' | xargs
    else
        psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT book||':'||chapter||':'||verse FROM study_app.hunuj ORDER BY CHAR_LENGTH(contents) DESC LIMIT 1;" | sed '1,2 d' | sed '$d' | 
                 sed '$d' | xargs
    fi
}

numberOfAllBooks()
{
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT count(distinct book) FROM study_app.hunuj;"| sed '1,2 d' | sed '$d' | 
         sed '$d' | xargs
}

numberOfAllChapters()
{
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT sum(chapters) FROM (SELECT book, count(distinct chapter) chapters FROM study_app.hunuj GROUP BY book) A;" | 
                 sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

numberOfAllVerses()
{
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT count(*) FROM study_app.hunuj;" | sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

numberOfAllCharacters()
{
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT concat(contents) FROM study_app.hunuj;" | sed '1,2 d' | sed '$d' | sed '$d' \
         | xargs | wc -m
}

numberOfVerses()
{
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT count(*) FROM study_app.hunuj WHERE book LIKE'""$1""'AND chapter=$2;"
}

numberOfCharacters()
{
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT concat(contents) FROM study_app.hunuj WHERE book LIKE'""$1""'AND chapter=$2;" \
         | sed '1,2 d' | sed '$d' | sed '$d' | xargs | wc -m
}

numberOfWords()
{
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT concat(contents) FROM study_app.hunuj WHERE book LIKE'""$1""'AND chapter=$2;" \
         | sed '1,2 d' | sed '$d' | sed '$d' | xargs | wc -w
}

createTables()
{
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "DROP TABLE IF EXISTS study_app.global_statistics; CREATE TABLE study_app.global_statistics (key VARCHAR(50) PRIMARY KEY, value 
               VARCHAR(2000) NOT NULL, additional_info VARCHAR(256));"
}

fill()
{
    IFS="@"

    read -r value additional_info <<< $1
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "INSERT INTO study_app.global_statistics (key,value,additional_info) VALUES('$2', '$value', '$additional_info');"

    IFS=" "
}

fillTables()
{
    fill $(shortestBookByChapters)      'SHORTEST_BOOK_BY_CHAPTERS'
    fill $(longestBookByChapters)       'LONGEST_BOOK_BY_CHAPTERS'
    fill $(shortestBookByCharacters)    'SHORTEST_BOOK_BY_CHARACTERS'
    fill $(longestBookByCharacters)     'LONGEST_BOOK_BY_CHARACTERS'
    fill $(shortestChapterByVerses)     'SHORTEST_CHAPTER_BY_VERSES'
    fill $(longestChapterByVerses)      'LONGEST_CHAPTER_BY_VERSES'
    fill $(shortestChapterByCharacters) 'SHORTEST_CHAPTER_BY_CHARACTERS'
    fill $(longestChapterByCharacters)  'LONGEST_CHAPTER_BY_CHARACTERS'
    fill $(shortestVerse)               'SHORTEST_VERSE'
    fill $(longestVerse)                'LONGEST_VERSE'
    fill $(numberOfAllBooks)            'NUMBER_OF_ALL_BOOKS'
    fill $(numberOfAllChapters)         'NUMBER_OF_ALL_CHAPTERS'
    fill $(numberOfAllVerses)           'NUMBER_OF_ALL_VERSES'
    fill $(numberOfAllCharacters)       'NUMBER_OF_ALL_CHARACTERS'
}


createTables
fillTables
