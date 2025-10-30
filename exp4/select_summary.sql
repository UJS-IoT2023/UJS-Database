SELECT
    suppliers.supplier_name AS 供应商,
    parts.part_name AS 零件,
    projects.project_name AS 工程项目,
    supplier_part_project.quantity AS 数量
FROM supplier_part_project
JOIN suppliers ON supplier_part_project.supplier_id = suppliers.supplier_id
JOIN parts ON supplier_part_project.part_id = parts.part_id
JOIN projects ON supplier_part_project.project_id = projects.project_id
ORDER BY supplier_name, project_name, part_name;