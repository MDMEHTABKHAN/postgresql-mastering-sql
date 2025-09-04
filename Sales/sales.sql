
CREATE SCHEMA sales;

DROP SCHEMA IF EXISTS sales CASCADE;

DROP SCHEMA sales CASCADE;



CREATE TABLE sales.customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE sales.orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES sales.customers(customer_id),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20),
    total_amount DECIMAL(10, 2)
);


SELECT * FROM sales.customers;

SELECT * FROM sales.orders;

DROP TABLE sales.orders, sales.customers;


SELECT AGE(NOW(), '1999-02-14');

