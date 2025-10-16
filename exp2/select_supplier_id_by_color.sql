SELECT DISTINCT spp.supplier_id
FROM supplier_part_project spp
JOIN parts p ON spp.part_id = p.part_id
WHERE spp.project_id = 'J1' AND p.color = '红';
