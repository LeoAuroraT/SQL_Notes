-- who can get most likes in a single photo

SELECT users.username, photos.image_url, COUNT(likes.created_at) AS likes_received
FROM photos
INNER JOIN users ON users.id = photos.user_id
INNER JOIN likes ON photos.id = likes.photo_id
GROUP BY photos.id
ORDER BY likes_received DESC
LIMIT 1;
