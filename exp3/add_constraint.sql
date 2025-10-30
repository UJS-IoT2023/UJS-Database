ALTER TABLE supplier_part_project
ADD CONSTRAINT quantity_range
CHECK ( quantity > 0 AND quantity < 1000 );