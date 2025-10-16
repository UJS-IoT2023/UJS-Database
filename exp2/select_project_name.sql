SELECT DISTINCT j.project_name
FROM projects j
JOIN supplier_part_project spj ON j.project_id = spj.project_id
JOIN suppliers s ON spj.supplier_id = s.supplier_id
WHERE s.city = '上海';
