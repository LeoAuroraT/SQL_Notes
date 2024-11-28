
-- Adds an extra row at the end, showing the grand total for all groups combined (i.e., the average rating across all titles).
SELECT title, AVG(rating)
FROM full_reviews
GROUP BY title WITH ROLLUP;