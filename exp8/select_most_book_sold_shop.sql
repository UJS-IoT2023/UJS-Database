SELECT s.shop_id, s.shop_name, s.address, COALESCE(SUM(d.quantity), 0) AS total_books_sold
FROM shop s
LEFT JOIN book_distribution d ON s.shop_id = d.shop_id
GROUP BY s.shop_id, s.shop_name, s.address
ORDER BY total_books_sold DESC
LIMIT 1;