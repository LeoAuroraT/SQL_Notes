-- find users who have likes every photo

SELECT users.username
FROM users
INNER JOIN likes ON users.id = likes.user_id
INNER JOIN photos ON photos.id = likes.photo_id
GROUP BY users.username
HAVING COUNT(DISTINCT photos.id) = (SELECT COUNT(*) FROM photos);


SELECT users.username
FROM users
INNER JOIN likes ON users.id = likes.user_id
GROUP BY users.username
HAVING COUNT(DISTINCT likes.photo_id) = (SELECT COUNT(*) FROM photos);



SELECT username, 
       Count(*) AS num_likes 
FROM   users 
       INNER JOIN likes 
               ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) 
                    FROM   photos); 



-- WHERE	Filters rows before grouping. Can only use raw column values, not aggregate functions.	Before GROUP BY
-- HAVING	Filters groups after grouping. Can use aggregate functions (e.g., COUNT(), SUM()).	After GROUP BY and aggregates