SELECT author_fname, author_lname, COUNT(*) FROM books
GROUP BY author_fname, author_lname;


SELECT CONCAT(author_fname, ' ', author_lname) AS author,  COUNT(*)
FROM books
GROUP BY author;