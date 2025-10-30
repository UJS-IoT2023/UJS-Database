SELECT parts.part_name, supplier_part_project.quantity
FROM supplier_part_project
JOIN parts ON supplier_part_project.part_id = parts.part_id
WHERE supplier_part_project.project_id = 'J2'
ORDER BY part_name;