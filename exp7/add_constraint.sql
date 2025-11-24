ALTER TABLE book_distribution
ADD CONSTRAINT chk_quantity CHECK (quantity > 0 AND quantity < 100);