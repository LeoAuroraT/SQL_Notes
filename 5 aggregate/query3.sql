SELECT title, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);