-- 5 most used tags

SELECT tags.tag_name, COUNT(photos.id) AS times_used
FROM photos
INNER JOIN photo_tags ON photos.id = photo_tags.photo_id
INNER JOIN tags ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY times_used DESC
LIMIT 5;
