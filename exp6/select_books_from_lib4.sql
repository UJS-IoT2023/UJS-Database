SELECT DISTINCT b.book_name
FROM book_distribution bd
JOIN book b ON bd.book_id = b.book_id
WHERE bd.library_id = 'L4';