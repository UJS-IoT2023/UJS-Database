BEGIN;

DELETE FROM supplier_part_project
WHERE part_id IN (
    SELECT part_id
    FROM parts
    WHERE color = '蓝'
    );

DELETE FROM parts
WHERE color = '蓝';

COMMIT;