-- Create a view to show library book distribution information
CREATE VIEW library_book_distribution_view AS
SELECT 
    l.library_id,
    l.library_name,
    l.city AS library_city,
    b.book_id,
    b.book_name,
    b.price,
    s.shop_id,
    s.shop_name,
    s.address AS shop_address,
    bd.quantity
FROM library l
JOIN book_distribution bd ON l.library_id = bd.library_id
JOIN book b ON bd.book_id = b.book_id
JOIN shop s ON bd.shop_id = s.shop_id;

-- View the data
SELECT * FROM library_book_distribution_view ORDER BY library_name, book_name, shop_name;