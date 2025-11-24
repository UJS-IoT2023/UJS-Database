SELECT DISTINCT l.library_id
FROM library l
WHERE NOT EXISTS (
    SELECT 1
    FROM book_distribution bd
    JOIN shop s ON bd.shop_id = s.shop_id
    WHERE bd.library_id = l.library_id
    AND s.shop_name = '上海新华书店'
);
