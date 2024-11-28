SELECT title, author_fname, author_lname, pages 
FROM books
WHERE author_fname LIKE '%da%';

SELECT * FROM books
WHERE title LIKE '%\%%';