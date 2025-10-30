SELECT project_id, sum(quantity) AS total_parts
FROM supplier_part_project
GROUP BY project_id 
ORDER BY project_id;