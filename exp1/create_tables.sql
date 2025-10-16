-- Suppliers Table
CREATE TABLE Suppliers (
    supplier_id TEXT PRIMARY KEY,
    supplier_name TEXT NOT NULL,
    status INTEGER NOT NULL,
    city TEXT NOT NULL
);
CREATE INDEX idx_suppliers_supplier_id ON Suppliers (supplier_id);

-- Parts Table
CREATE TABLE Parts (
    part_id TEXT PRIMARY KEY,
    part_name TEXT NOT NULL,
    color TEXT NOT NULL,
    weight INTEGER NOT NULL
);
CREATE INDEX idx_parts_part_id ON Parts (part_id);

-- Projects Table
CREATE TABLE Projects (
    project_id TEXT PRIMARY KEY,
    project_name TEXT NOT NULL,
    city TEXT NOT NULL
);
CREATE INDEX idx_projects_project_id ON Projects (project_id);

-- SupplierPartProject Junction Table
CREATE TABLE SupplierPartProject (
    supplier_id TEXT,
    part_id TEXT,
    project_id TEXT,
    quantity INTEGER NOT NULL,
    PRIMARY KEY (supplier_id, part_id, project_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers (supplier_id),
    FOREIGN KEY (part_id) REFERENCES Parts (part_id),
    FOREIGN KEY (project_id) REFERENCES Projects (project_id)
);
CREATE INDEX idx_spj_supplier_id ON SupplierPartProject (supplier_id);
CREATE INDEX idx_spj_part_id ON SupplierPartProject (part_id);
CREATE INDEX idx_spj_project_id ON SupplierPartProject (project_id);