SELECT project_id, quantity
FROM supplier_part_project
WHERE part_id = 'P1'
ORDER BY quantity DESC;
