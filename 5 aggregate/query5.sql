SELECT
	author_lname,
	COUNT(*) AS books_written,
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release,
    MAX(pages) AS longest_page_count
FROM books
GROUP BY author_lname;