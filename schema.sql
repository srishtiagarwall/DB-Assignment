CREATE TABLE Product_Category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    category_id INTEGER,
    CONSTRAINT FK_Product_Category FOREIGN KEY (category_id) REFERENCES Product_Category(id)
);
