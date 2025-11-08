-- Library Table
CREATE TABLE library (
    library_id TEXT PRIMARY KEY,
    library_name TEXT NOT NULL,
    city TEXT NOT NULL,
    tel TEXT NOT NULL
);
CREATE INDEX idx_library_library_id ON library (library_id);

-- Book Table
CREATE TABLE book (
    book_id TEXT PRIMARY KEY,
    book_name TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);
CREATE INDEX idx_book_book_id ON book (book_id);

-- Shop Table
CREATE TABLE shop (
    shop_id TEXT PRIMARY KEY,
    shop_name TEXT NOT NULL,
    address TEXT NOT NULL
);
CREATE INDEX idx_shop_shop_id ON shop (shop_id);

-- Book Distribution Table
CREATE TABLE book_distribution (
    library_id TEXT,
    book_id TEXT,
    shop_id TEXT,
    quantity INTEGER NOT NULL,
    PRIMARY KEY (library_id, book_id, shop_id),
    FOREIGN KEY (library_id) REFERENCES library (library_id),
    FOREIGN KEY (book_id) REFERENCES book (book_id),
    FOREIGN KEY (shop_id) REFERENCES shop (shop_id)
);
CREATE INDEX idx_book_distribution_library_id ON book_distribution (library_id);
CREATE INDEX idx_book_distribution_book_id ON book_distribution (book_id);
CREATE INDEX idx_book_distribution_shop_id ON book_distribution (shop_id);