SELECT COUNT(*)
FROM books;


SELECT released_year, COUNT(*)
FROM books
GROUP BY released_year;


SELECT SUM(stock_quantity)
FROM books;

SELECT CONCAT(author_fname, ' ', author_lname) AS name, AVG(released_year)
FROM books
GROUP BY name;

SELECT CONCAT(author_fname, ' ', author_lname) AS name, pages
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);


SELECT released_year AS year, COUNT(*) AS '# books', AVG(pages) as 'avg pages'
FROM books
GROUP BY year
ORDER BY year;