SELECT reviewers.first_name, reviewers.last_name, 
COUNT(reviews.id) AS COUNT,
CASE
	WHEN COUNT(reviews.id) = 0 THEN 0
	ELSE MIN(reviews.rating)
END AS MIN,
CASE
	WHEN COUNT(reviews.id) = 0 THEN 0
	ELSE MAX(reviews.rating)
END AS MAX,
CASE
	WHEN COUNT(reviews.id) = 0 THEN 0
	ELSE AVG(reviews.rating)
END AS AVG,
CASE
	WHEN COUNT(reviews.id) = 0 THEN 'INACTIVE'
	ELSE 'ACTIVE'
END AS STATUS
FROM reviewers LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.first_name, reviewers.last_name;


-- you don't always need to use CASE

SELECT reviewers.first_name, reviewers.last_name, 
COUNT(reviews.id) AS COUNT,
IFNULL(MIN(reviews.id), 0) AS MIN,
IFNULL(MAX(reviews.id), 0) AS MAX,
ROUND(IFNULL(AVG(reviews.rating), 0), 2) AS AVG,
CASE
	WHEN COUNT(reviews.id) = 0 THEN 'INACTIVE'
	ELSE 'ACTIVE'
END AS STATUS
FROM reviewers LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.first_name, reviewers.last_name;



-- USE IF

SELECT reviewers.first_name, reviewers.last_name, 
COUNT(reviews.id) AS COUNT,
IFNULL(MIN(reviews.id), 0) AS MIN,
IFNULL(MAX(reviews.id), 0) AS MAX,
ROUND(IFNULL(AVG(reviews.rating), 0), 2) AS AVG,
IF (COUNT(reviews.id) = 0, 'INACTIVE', 'ACTIVE') AS STATUS
FROM reviewers LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.first_name, reviewers.last_name;