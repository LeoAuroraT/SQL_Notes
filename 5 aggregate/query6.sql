SELECT author_lname, COUNT(*), SUM(pages)
FROM books
GROUP BY author_lname;


SELECT 
    released_year, 
    AVG(stock_quantity), 
    COUNT(*) FROM books
GROUP BY released_year;