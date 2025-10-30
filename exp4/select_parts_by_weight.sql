SELECT DISTINCT supplier_part_project.project_id
FROM supplier_part_project
JOIN suppliers ON supplier_part_project.supplier_id = suppliers.supplier_id
JOIN parts ON supplier_part_project.part_id = parts.part_id
WHERE suppliers.city = '天津' AND parts.weight > 15;