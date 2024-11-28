SELECT title FROM books
WHERE title LIKE '%stories%';

SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;


SELECT CONCAT(title, ' - ', released_year) AS summary FROM books
ORDER BY released_year DESC LIMIT 3;

SELECT title, author_lname FROM books
WHERE author_lname LIKE '% %';

SELECT title, author_lname FROM books
ORDER BY author_lname, title;

SELECT CONCAT("My favorite author is ", author_fname, ' ', author_lname, '!') AS yell
FROM (SELECT DISTINCT author_fname, author_lname FROM books) AS unique_authors
ORDER BY author_lname;