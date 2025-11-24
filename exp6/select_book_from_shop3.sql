SELECT b.book_name, bd.quantity
FROM book_distribution bd
JOIN book b ON bd.book_id = b.book_id
WHERE bd.shop_id = 'S3';