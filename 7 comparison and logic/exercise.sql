SELECT title, released_year
FROM books
WHERE released_year <= 1980;

SELECT title, author_lname
FROM books
WHERE author_lname IN ('Eggers', 'Chabon');

SELECT title, author_lname, released_year
FROM books
WHERE author_lname = 'Lahiri'
AND released_year > 2000;

SELECT title, author_lname
FROM books
WHERE author_lname LIKE 'C%'
OR author_lname LIKE 'S%';


SELECT title, author_lname, 
CASE
	WHEN title LIKE '%stories%' THEN 'Short Stories'
	WHEN title = 'Just Kids' OR title LIKE 'A Heartbreaking Work%' THEN 'Memoir'
	ELSE 'Novel'
END AS TYPE
FROM books;


SELECT author_fname, author_lname,
CASE
	WHEN COUNT(*) = 1 THEN CONCAT(COUNT(*), ' book')
	ELSE CONCAT(COUNT(*), ' books')
END AS COUNT
FROM books
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;