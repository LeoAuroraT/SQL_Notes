-- find users who never posted a photo

SELECT users.username
FROM users LEFT JOIN photos ON users.id = photos.user_id
GROUP BY users.username
HAVING COUNT(photos.id) = 0;



SELECT username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;
