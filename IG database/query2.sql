-- which day of a week most users registered

SELECT DAYNAME(created_at) as dayname, COUNT(*) AS count
FROM users
GROUP BY dayname
ORDER BY count DESC
LIMIT 1;