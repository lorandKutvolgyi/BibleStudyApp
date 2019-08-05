#!/bin/bash


shortestBookByChapters()
{
    # assuming the shortest book in every translation consists of 1 chapter
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT book FROM study_app.$1 GROUP BY book HAVING max(chapter)=1;" | 
         sed '1,2 d' | sed '$d' | sed '$d' | xargs | sed 's/.*/&@1/' | sed 's/ /,/g'
}

longestBookByChapters()
{
    # assuming there is no more than one longest book with the same number of chapters
    psql -h localhost -p 5433 -U postgres -d bible -c\
	 "SELECT distinct study_app.$1.book, study_app.$1.chapter FROM study_app.$1 WHERE chapter=
		(SELECT max(chapter) FROM study_app.$1);" | sed '1,2 d' | sed '$d' | sed '$d' | xargs | sed 's/ \+| \+/@/' | sed 's/ /,/g'
}

shortestBookByCharacters()
{
    # assuming there are no books with the same number of characters
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT book||'@'||length(cont) FROM (SELECT  book, string_agg(contents,' ') cont FROM study_app.$1 GROUP BY book) cont_table 
                ORDER BY CHAR_LENGTH(cont)  LIMIT 1;" | sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

longestBookByCharacters()
{
    # assuming there are no books with the same number of characters
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT book||'@'||length(cont) FROM (SELECT  book, string_agg(contents,' ') cont FROM study_app.$1 GROUP BY book) cont_table 
                ORDER BY CHAR_LENGTH(cont) DESC LIMIT 1;" | sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

shortestChapterByVerses()
{
    psql -h localhost -p 5433 -U postgres -d bible -c\
	 "SELECT book||':'||chapter||'@'||max(verse) FROM study_app.$1 GROUP BY book, chapter HAVING max(verse)=
                (SELECT min(maxverse) FROM (SELECT book, chapter, max(verse) maxverse FROM study_app.$1 GROUP BY book, chapter) A);"  | 
                sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

longestChapterByVerses()
{
    psql -h localhost -p 5433 -U postgres -d bible -c\
	 "SELECT distinct book||':'||chapter||'@'||verse FROM study_app.$1 WHERE
                verse=(SELECT max(verse) FROM study_app.$1);"| 
                sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

shortestChapterByCharacters()
{
    # assuming there are no chapters with the same number of characters
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT book||':'||chapter||'@'||length(cont) FROM (SELECT  book, chapter, string_agg(contents,' ') cont FROM study_app.$1 
                 GROUP BY book, chapter) cont_table ORDER BY CHAR_LENGTH(cont)  LIMIT 1;" | sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

longestChapterByCharacters()
{
    # assuming there are no chapters with the same number of characters
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT book||':'||chapter||'@'||length(cont) FROM (SELECT  book, chapter, string_agg(contents,' ') cont FROM study_app.$1 GROUP 
                BY book, chapter) cont_table ORDER BY CHAR_LENGTH(cont) DESC LIMIT 1;" | sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

shortestVerseByCharacters()
{
    if [ $2 ]
    then
        psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT verse||' ('||CHAR_LENGTH(contents)||')' FROM study_app.$1 WHERE book='""$2""' AND chapter='""$3""' ORDER BY 
                 CHAR_LENGTH(contents) LIMIT 1;" | sed '1,2 d' | sed '$d' | sed '$d' | xargs
    else
        psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT book||':'||chapter||':'||verse||'@'||CHAR_LENGTH(contents) FROM study_app.$1 ORDER BY CHAR_LENGTH(contents) LIMIT 1;" | sed '1,2 d' | sed '$d' | 
                 sed '$d' | xargs
    fi
}

longestVerseByCharacters()
{
    if [ $2 ]
    then
        psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT verse||' ('||CHAR_LENGTH(contents)||')' FROM study_app.$1 WHERE book='""$2""' AND chapter='""$3""' ORDER BY 
                 CHAR_LENGTH(contents) DESC LIMIT 1;" | sed '1,2 d' | sed '$d' | sed '$d' | xargs
    else
        psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT book||':'||chapter||':'||verse||'@'||CHAR_LENGTH(contents) FROM study_app.$1 ORDER BY CHAR_LENGTH(contents) DESC LIMIT 1;" | sed '1,2 d' | sed '$d' | 
                 sed '$d' | xargs
    fi
}

numberOfAllBooks()
{
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT count(distinct book) FROM study_app.$1;"| sed '1,2 d' | sed '$d' | 
         sed '$d' | xargs
}

numberOfAllChapters()
{
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "SELECT sum(chapters) FROM (SELECT book, count(distinct chapter) chapters FROM study_app.$1 GROUP BY book) A;" | 
                 sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

numberOfAllVerses()
{
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT count(*) FROM study_app.$1;" | sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

numberOfAllCharacters()
{
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT concat(contents) FROM study_app.$1;" | sed '1,2 d' | sed '$d' | sed '$d' \
         | xargs | wc -m
}

numberOfVerses()
{
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT count(*) FROM study_app.$1 WHERE book LIKE'""$2""'AND chapter=$3;" \
         | sed '1,2 d' | sed '$d' | sed '$d' | xargs
}

numberOfCharacters()
{
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT concat(contents) FROM study_app.$1 WHERE book LIKE'""$2""'AND chapter=$3;" \
         | sed '1,2 d' | sed '$d' | sed '$d' | xargs | wc -m
}

numberOfWords()
{
    psql -h localhost -p 5433 -U postgres -d bible -c "SELECT concat(contents) FROM study_app.$1 WHERE book LIKE'""$2""'AND chapter=$3;" \
         | sed '1,2 d' | sed '$d' | sed '$d' | xargs | wc -w
}

createTables()
{
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "DROP TABLE IF EXISTS study_app.$1_global_statistics;
          CREATE TABLE study_app.$1_global_statistics (key VARCHAR(50) PRIMARY KEY,value VARCHAR(2000) NOT NULL,additional_info VARCHAR(256));
          DROP TABLE IF EXISTS study_app.$1_statistics_per_chapters;
          CREATE TABLE study_app.$1_statistics_per_chapters (book VARCHAR(50) NOT NULL,chapter VARCHAR(3) NOT NULL,key VARCHAR(50) NOT NULL, 
            value VARCHAR(2000) NOT NULL);"
}

fill_global()
{
    IFS="@"

    read -r value additional_info <<< $1
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "INSERT INTO study_app.$3_global_statistics (key,value,additional_info) VALUES('$2', '$value', '$additional_info');"

    IFS=" "
}

fill_per_chapter()
{
    psql -h localhost -p 5433 -U postgres -d bible -c\
         "INSERT INTO study_app.$1_statistics_per_chapters (book,chapter,key,value) VALUES('$2', '$3', '$4', '$5 $6');"
}

fillTables()
{
    fill_global $(shortestBookByChapters $1)      'SHORTEST_BOOK_BY_CHAPTERS'       $1
    fill_global $(longestBookByChapters $1)       'LONGEST_BOOK_BY_CHAPTERS'        $1
    fill_global $(shortestBookByCharacters $1)    'SHORTEST_BOOK_BY_CHARACTERS'     $1
    fill_global $(longestBookByCharacters $1)     'LONGEST_BOOK_BY_CHARACTERS'      $1
    fill_global $(shortestChapterByVerses $1)     'SHORTEST_CHAPTER_BY_VERSES'      $1
    fill_global $(longestChapterByVerses $1)      'LONGEST_CHAPTER_BY_VERSES'       $1
    fill_global $(shortestChapterByCharacters $1) 'SHORTEST_CHAPTER_BY_CHARACTERS'  $1
    fill_global $(longestChapterByCharacters $1)  'LONGEST_CHAPTER_BY_CHARACTERS'   $1
    fill_global $(shortestVerseByCharacters $1)   'SHORTEST_VERSE'                  $1
    fill_global $(longestVerseByCharacters $1)    'LONGEST_VERSE'                   $1
    fill_global $(numberOfAllBooks $1)            'NUMBER_OF_ALL_BOOKS'             $1
    fill_global $(numberOfAllChapters $1)         'NUMBER_OF_ALL_CHAPTERS'          $1
    fill_global $(numberOfAllVerses $1)           'NUMBER_OF_ALL_VERSES'            $1
    fill_global $(numberOfAllCharacters $1)       'NUMBER_OF_ALL_CHARACTERS'        $1

    for book in `psql -h localhost -p 5433 -U postgres -d bible -c "select distinct book from study_app.$1;" | sed '1,2 d'| sed '$d' | sed '$d'| xargs |sed 's/{//'| sed 's/}//'| sed 's/,/ /g'`
    {
        for chapter in `psql -h localhost -p 5433 -U postgres -d bible -c "select distinct chapter from study_app.$1 WHERE book LIKE'""$book""';" | sed '1,2 d'| sed '$d' | sed '$d'| xargs |sed 's/{//'| sed 's/}//'| sed 's/,/ /g'`
        {
            fill_per_chapter $1 $book $chapter 'SHORTEST_VERSE'       $(shortestVerseByCharacters $1 $book $chapter)
            fill_per_chapter $1 $book $chapter 'LONGEST_VERSE'        $(longestVerseByCharacters $1 $book $chapter)
            fill_per_chapter $1 $book $chapter 'NUMBER_OF_VERSES'     $(numberOfVerses $1 $book $chapter)
            fill_per_chapter $1 $book $chapter 'NUMBER_OF_CHARACTERS' $(numberOfCharacters $1 $book $chapter)
            fill_per_chapter $1 $book $chapter 'NUMBER_OF_WORDS'      $(numberOfWords $1 $book $chapter)
        }
    }
}

main()
{
    for i in `psql -h localhost -p 5433 -U postgres -d bible -c "select array_agg(abbrev) from study_app.translations;" | sed '1,2 d'| sed '$d' | sed '$d'| xargs |sed 's/{//'| sed 's/}//'| sed 's/,/ /g'`
    {
        createTables $i
        fillTables $i &
    }
}

main
