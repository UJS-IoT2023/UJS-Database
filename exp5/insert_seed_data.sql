-- Insert into library
INSERT INTO library (library_id, library_name, city, tel) VALUES
('L1', '上海图书馆', '上海', '205800'),
('L2', '上海外文书店', '上海', '310310'),
('L3', '北京图书馆', '北京', '282471'),
('L4', '武汉图书馆', '武汉', '812712'),
('L5', '南京图书馆', '南京', '328173');

-- Insert into book
INSERT INTO book (book_id, book_name, price) VALUES
('B1', '数据库原理', 9.80),
('B2', '系统分析与设计', 8.50),
('B3', '数据库设计', 7.10),
('B4', '计算机原理', 9.60),
('B5', '操作系统', 11.20);

-- Insert into shop
INSERT INTO shop (shop_id, shop_name, address) VALUES
('S1', '北京新华书店', '北京'),
('S2', '上海新华书店', '上海'),
('S3', '上海外文书店', '上海'),
('S4', '湖北新华书店', '武汉'),
('S5', '江苏新华书店', '南京');

-- Insert into book_distribution
INSERT INTO book_distribution (library_id, book_id, shop_id, quantity) VALUES
('L1', 'B1', 'S2', 10),
('L1', 'B2', 'S1', 5),
('L1', 'B3', 'S3', 5),
('L1', 'B4', 'S5', 20),
('L2', 'B1', 'S3', 10),
('L2', 'B4', 'S5', 20),
('L2', 'B5', 'S4', 15),
('L4', 'B4', 'S4', 20),
('L4', 'B5', 'S4', 30),
('L5', 'B1', 'S2', 10),
('L5', 'B2', 'S5', 20),
('L5', 'B4', 'S5', 30);