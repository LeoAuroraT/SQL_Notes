SELECT author_lname, COUNT(*)
FROM books
GROUP BY author_lname;

-- The variable after SELECT but not within another aggregation function such as COUNT, SUM, AVG must appear after GROUP BY


SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written DESC;