SELECT project_id FROM projects
WHERE project_id NOT IN (
    SELECT DISTINCT spp.project_id
    FROM supplier_part_project spp
    JOIN suppliers s ON spp.supplier_id = s.supplier_id
    JOIN parts p ON spp.part_id = p.part_id
    WHERE s.city = '天津' AND p.color = '红'
    );