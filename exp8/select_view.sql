SELECT 
    s.shop_name AS "书店",
    l.library_name AS "图书馆", 
    b.book_name AS "图书",
    bd.quantity AS "数量"
FROM book_distribution bd
INNER JOIN shop s ON bd.shop_id = s.shop_id
INNER JOIN library l ON bd.library_id = l.library_id
INNER JOIN book b ON bd.book_id = b.book_id
ORDER BY s.shop_name, l.library_name, b.book_name;