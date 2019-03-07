DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
-- Unique id for each product
item_id INTEGER NOT NULL AUTO_INCREMENT,

-- Name of the product
product_name VARCHAR(30) NOT NULL, 

-- Dept name
dept_name VARCHAR(30),

-- Cost to customer
price DECIMAL(7,2),

-- Products availables
stock_quantity INTEGER(4),

PRIMARY KEY(item_id)
);

-- Products on database
INSERT INTO products(product_name, dept_name, price, stock_quantity)
VALUES ("EchoSound", "Electronics", 49.99, 100);


INSERT INTO products(product_name, dept_name, price, stock_quantity)
VALUES ("Headphones", "Electronics", 13.99, 98);


INSERT INTO products(product_name, dept_name, price, stock_quantity)
VALUES ("360DegTV 5K HD", "Electronics", 1500, 30);


INSERT INTO products(product_name, dept_name, price, stock_quantity)
VALUES ("Red Backpack", "Men", 29.99, 70);


INSERT INTO products(product_name, dept_name, price, stock_quantity)
VALUES ("DBZ Movie", "Movies", 22.99, 200);


INSERT INTO products(product_name, dept_name, price, stock_quantity)
VALUES ("Smart Watch", "Electronics", 295.99, 20);


INSERT INTO products(product_name, dept_name, price, stock_quantity)
VALUES ("Spider-Man New Movie", "Movies", 22.96, 300);


INSERT INTO products(product_name, dept_name, price, stock_quantity)
VALUES ("EchoSound", "Electronics", 49.99, 100);


INSERT INTO products(product_name, dept_name, price, stock_quantity)
VALUES ("Phone Case", "Electronics", 9.99, 1000);


INSERT INTO products(product_name, dept_name, price, stock_quantity)
VALUES ("Super Jacket", "Men", 449.99, 20);products