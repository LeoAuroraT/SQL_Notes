-- not equal
SELECT * FROM books
WHERE released_year != 2017;

-- not like
SELECT * FROM books
WHERE title NOT LIKE '%e%';

-- greater than
SELECT * FROM books
WHERE released_year > 2005;

-- less or equal to
SELECT * FROM books
WHERE released_year <= 1985;

-- AND
SELECT title, author_lname, released_year FROM books
WHERE released_year > 2010
AND author_lname = 'Eggers';

-- OR
SELECT title, pages FROM books
WHERE pages < 200 
OR title LIKE '%stories%';

-- Between
SELECT title, released_year FROM books
WHERE released_year <= 2015
AND released_year >= 2004;
 
SELECT title, released_year FROM books
WHERE released_year BETWEEN 2004 AND 2014;