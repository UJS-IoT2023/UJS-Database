CREATE VIEW SupplierPartProjectView AS
SELECT 
    s.supplier_id, s.supplier_name, s.city AS supplier_city,
    p.part_id, p.part_name, p.color, p.weight,
    j.project_id, j.project_name, j.city AS project_city,
    spj.quantity
FROM Suppliers s
JOIN SupplierPartProject spj ON s.supplier_id = spj.supplier_id
JOIN Parts p ON spj.part_id = p.part_id
JOIN Projects j ON spj.project_id = j.project_id;

-- View the data
SELECT * FROM SupplierPartProjectView LIMIT 5;