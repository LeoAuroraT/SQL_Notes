SELECT title, rating
FROM series JOIN reviews
ON series.id = reviews.series_id;


SELECT title, ROUND(AVG(rating), 2) AS avg_rating
FROM series JOIN reviews
ON series.id = reviews.series_id
GROUP BY title
ORDER BY avg_rating;

SELECT first_name, last_name, rating
FROM reviewers JOIN reviews
ON reviewers.id = reviews.reviewer_id;



SELECT title AS unreviewed_series
FROM series LEFT JOIN reviews
ON series.id = reviews.series_id
WHERE rating IS NULL;

SELECT title AS unreviewed_series
FROM reviews RIGHT JOIN series
ON series.id = reviews.series_id
WHERE rating IS NULL;
