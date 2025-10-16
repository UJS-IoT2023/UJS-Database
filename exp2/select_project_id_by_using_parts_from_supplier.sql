SELECT DISTINCT j.project_id
FROM projects j
WHERE NOT EXISTS (
    SELECT p.part_id
    FROM supplier_part_project p
    WHERE p.supplier_id = 'S1'
      AND NOT EXISTS (
          SELECT *
          FROM supplier_part_project spj
          WHERE spj.project_id = j.project_id
            AND spj.part_id = p.part_id
      )
);
