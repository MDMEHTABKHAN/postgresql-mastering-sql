CREATE TABLE users1 (
    user_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Products table
CREATE TABLE products1 (
    product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK (price >= 0),
    stock INT DEFAULT 0 CHECK (stock >= 0)
);

-- Orders table (references users & products)
CREATE TABLE orders12 (
    order_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    user_id INT REFERENCES users1(user_id) ON DELETE CASCADE,
    product_id INT REFERENCES products1(product_id) ON DELETE CASCADE,
    quantity INT NOT NULL CHECK (quantity > 0),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);





INSERT INTO users1 (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Charlie', 'charlie@example.com'),
('David', 'david@example.com'),
('Emma', 'emma@example.com'),
('Frank', 'frank@example.com'),
('Grace', 'grace@example.com'),
('Henry', 'henry@example.com');

INSERT INTO products1 (name, price, stock) VALUES
('Laptop', 75000.00, 10),
('Phone', 25000.00, 20),
('Headphones', 2000.00, 50),
('Tablet', 30000.00, 15),
('Smartwatch', 12000.00, 25),
('Monitor', 15000.00, 18),
('Keyboard', 1500.00, 100),
('Mouse', 800.00, 150),
('Printer', 12000.00, 12),
('Camera', 40000.00, 8),
('Speakers', 5000.00, 40);



INSERT INTO orders12 (user_id, product_id, quantity) VALUES
(1, 1, 1),   -- Alice buys Laptop
(1, 2, 2),   -- Alice buys 2 Phones
(2, 3, 3),   -- Bob buys Headphones
(2, 4, 1),   -- Bob buys Tablet
(3, 5, 2),   -- Charlie buys Smartwatch
(3, 6, 1),   -- Charlie buys Monitor
(4, 7, 1),   -- David buys Keyboard
(4, 8, 2),   -- David buys Mouse
(5, 9, 1),   -- Emma buys Printer
(5, 10, 1),  -- Emma buys Camera
(6, 11, 2),  -- Frank buys Speakers
(6, 2, 1),   -- Frank buys Phone
(7, 1, 1),   -- Grace buys Laptop
(7, 5, 1),   -- Grace buys Smartwatch
(8, 3, 4),   -- Henry buys Headphones
(8, 6, 2);   -- Henry buys Monitor

SELECT * FROM users1;

SELECT * FROM products1;

SELECT * FROM orders12;



SELECT name, price FROM products1;



SELECT order_id, user_id, product_id, quantity FROM orders12;



SELECT name AS product_name, stock AS available_stock
FROM products1;





SELECT * FROM users1 WHERE name = 'Alice';


SELECT * FROM products1 WHERE price <> 12000;

SELECT * FROM orders12 WHERE quantity >= 2;



SELECT * FROM products1 WHERE price > 20000 AND stock > 10;


SELECT * FROM products1 WHERE price < 2000 OR stock = 0;


SELECT * FROM users1 WHERE NOT name = 'Bob';




-- Users whose name starts with 'A'
SELECT * FROM users1 WHERE name LIKE 'A%';

-- Users whose name ends with 'a' (case-insensitive)
SELECT * FROM users1 WHERE name ILIKE '%a';

-- Users whose name is 5 letters long and starts with 'D'
SELECT * FROM users1 WHERE name LIKE 'D____';



-- Products priced between 10000 and 30000
SELECT * FROM products1 WHERE price BETWEEN 10000 AND 30000;


-- Users with names in given list
SELECT * FROM users1 WHERE name IN ('Alice', 'Bob', 'Emma');

-- Products not in given list of IDs
SELECT * FROM products1 WHERE product_id NOT IN (1, 2, 3);



-- Users who have no email (if any)
SELECT * FROM users1 WHERE email IS NULL;

-- Orders where product_id is not null
SELECT * FROM orders12 WHERE product_id IS NOT NULL;



-- Sort users alphabetically by name
SELECT user_id, name, email
FROM users1
ORDER BY name ASC;

-- Sort products by price from highest to lowest
SELECT product_id, name, price
FROM products1
ORDER BY price DESC;

-- Sort orders by quantity, then by order_date
SELECT order_id, user_id, product_id, quantity, order_date
FROM orders12
ORDER BY quantity DESC, order_date ASC;




-- Get the first 5 products (like "Top 5")
SELECT * FROM products1
ORDER BY price DESC
LIMIT 5;

-- Skip the first 3 users, then show the next 3
SELECT * FROM users1
ORDER BY user_id
LIMIT 3 OFFSET 3;

-- Get the most recent order only
SELECT * FROM orders12
ORDER BY order_date DESC
LIMIT 1 OFFSET 2;


-- Rename column output with AS
SELECT name AS product_name, price AS product_price
FROM products1;





UPDATE users1
SET email = 'alice.new@example.com'
WHERE name = 'Alice';


UPDATE products1
SET stock = stock + 10
WHERE name = 'Laptop';



UPDATE products1
SET price = price * 0.9  -- 10% discount
WHERE price > 20000;




UPDATE users1
SET name = 'Robert', email = 'robert@example.com'
WHERE user_id = 2;


DELETE FROM users1
WHERE name = 'Henry';




DELETE FROM orders12
WHERE product_id = 3; 


SELECT SUM(price) FROM products1;


SELECT MIN(price) FROM products1;

SELECT MAX(price) FROM products1;

SELECT AVG(price) FROM products1;

SELECT COUNT(*) FROM products1;



SELECT product_id, SUM(quantity) AS total_quantity
FROM orders12
GROUP BY product_id
ORDER BY  SUM(quantity);




SELECT p.name AS product, SUM(o.quantity) AS total_quantity
FROM orders12 o
JOIN products1 p ON o.product_id = p.product_id
GROUP BY p.name;



SELECT p.name AS product, SUM(o.quantity) AS total_quantity
FROM orders12 o
JOIN products1 p ON o.product_id = p.product_id
GROUP BY p.name
HAVING SUM(o.quantity) > 3;


SELECT u.name AS customer, COUNT(*) AS total_orders
FROM orders12 o
JOIN users1 u ON o.user_id = u.user_id
GROUP BY u.name;


SELECT AVG(p.price) AS avg_price
FROM orders12 o
JOIN products1 p ON o.product_id = p.product_id;

SELECT p.name AS product, MAX(o.quantity) AS max_quantity
FROM orders12 o
JOIN products1 p ON o.product_id = p.product_id
GROUP BY p.name;




SELECT o.order_id, u.name AS customer, p.name AS product, o.quantity
FROM orders12 o
INNER JOIN users1 u ON o.user_id = u.user_id
INNER JOIN products1 p ON o.product_id = p.product_id;



-- Get all orders with user name and product name
SELECT o.order_id, u.name AS customer, p.name AS product, o.quantity
FROM orders12 o
INNER JOIN users1 u ON o.user_id = u.user_id
INNER JOIN products1 p ON o.product_id = p.product_id;



-- List all orders and users (even if user data is missing)
SELECT o.order_id, u.name AS customer, o.quantity
FROM orders12 o
RIGHT JOIN users1 u ON o.user_id = u.user_id;



-- List all users and all orders
SELECT u.name AS customer, o.order_id, o.quantity
FROM users1 u
FULL OUTER JOIN orders12 o ON u.user_id = o.user_id;



SELECT o.order_id, p.name AS product, o.quantity
FROM orders12 o
INNER JOIN products1 p ON o.product_id = p.product_id;


SELECT u.name AS customer, o.order_id, o.quantity
FROM users1 u
LEFT JOIN orders12 o ON u.user_id = o.user_id;


SELECT p.name AS product, o.order_id, o.quantity
FROM products1 p
LEFT JOIN orders12 o
ON p.product_id = o.product_id;





CREATE VIEW highest_price AS
SELECT * FROM products1
WHERE price >=70000;


SELECT * FROM highest_price;



DROP VIEW highest_price;

CREATE VIEW details_products1 AS
SELECT * FROM products1;


SELECT  * FROM details_products1;

DROP VIEW details_products1;



CREATE VIEW products_details AS
SELECT name AS full_name, price, stock
FROM products1;


SELECT * FROM products_details;



SELECT * FROM products_details WHERE price >= 10000;


SELECT * FROM products_details WHERE stock >= 8;


SELECT full_name, stock FROM products_details WHERE stock BETWEEN 5 AND 10;






CREATE VIEW order_summary AS
SELECT o.order_id,
        u.name AS customer,
        p.name AS product,
        o.quantity,
        (o.quantity * p.price) AS total_price
FROM orders12 o
JOIN users1 u ON o.user_id = u.user_id
JOIN products1 p ON o.product_id = p.product_id;

SELECT * FROM order_summary;

DROP VIEW order_summary;


CREATE VIEW product_sales AS
SELECT p.name AS product,
       SUM(o.quantity) AS total_quantity,
       SUM(o.quantity * p.price) AS total_sales
FROM orders12 o
JOIN products1 p ON o.product_id = p.product_id
GROUP BY p.name;

SELECT * FROM product_sales;

DROP VIEW product_sales, order_summary;




CREATE VIEW active_users AS
SELECT * FROM users1
WHERE created_at IS NOT NULL;

-- Update through view
UPDATE active_users
SET name = 'Alice Updated'
WHERE user_id = 1;

