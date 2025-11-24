SELECT DISTINCT l.library_name
FROM book_distribution bd
JOIN library l ON bd.library_id = l.library_id
JOIN book b ON bd.book_id = b.book_id
WHERE b.book_name = '数据库设计';