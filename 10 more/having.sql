SELECT 
    title, 
    AVG(rating),
    COUNT(rating) AS review_count
FROM full_reviews 
GROUP BY title HAVING COUNT(rating) > 1;

-- this is wrong
--The WHERE clause is used to filter rows before grouping and aggregation happens. 
--It operates on individual rows, not on grouped data.
SELECT 
    title, 
    AVG(rating),
    COUNT(rating) AS review_count
FROM full_reviews 
WHERE COUNT(rating) > 1
GROUP BY title;