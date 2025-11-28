SELECT book.book_name, book.price
FROM book
WHERE EXISTS (
    SELECT 1
    FROM book_distribution
    WHERE book_distribution.book_id = book.book_id
)
ORDER BY price
DESC
LIMIT 1;
-- INNER JOIN book_distribution ON book_distribution.book_id = book.book_id

SELECT book_name, price, price_rank
FROM (
    SELECT book.book_name, book.price,
        CASE 
            WHEN book.price = MAX(book.price) OVER() THEN 'HIGHEST'
            WHEN book.price = MIN(book.price) OVER() THEN 'LOWEST'
        END as price_rank
    FROM book
    WHERE EXISTS (
        SELECT 1
        FROM book_distribution
        WHERE book_distribution.book_id = book.book_id
    )
) ranked
WHERE price_rank IS NOT NULL
ORDER BY price DESC;