SELECT students.first_name, papers.title, papers.grade
FROM students JOIN papers
ON students.id = papers.student_id
ORDER BY papers.grade DESC;


SELECT students.first_name, papers.title, papers.grade
FROM students LEFT JOIN papers
ON students.id = papers.student_id;


SELECT students.first_name, IFNULL(papers.title, 'MISSING'), IFNULL(papers.grade, 0)
FROM students LEFT JOIN papers
ON students.id = papers.student_id;


SELECT first_name, IFNULL(AVG(grade), 0) AS average
FROM students LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;


SELECT first_name, IFNULL(AVG(grade), 0) AS average,
CASE
	WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'passing'
	ELSE 'falling'
END AS passing_status
FROM students LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;