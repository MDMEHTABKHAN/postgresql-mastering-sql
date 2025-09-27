
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




CREATE TABLE course_enrollments (
    student_ID INT,
    course_ID INT,
    PRIMARY KEY(student_id, course_id)
);


CREATE TABLE employee(
    -- employee_id INT AUTO_INCREMENT PRIMARY KEY,
    -- employee_id SERIAL PRIMARY KEY
    -- employee-id BIGSERIAL PRIMARY KEY,
    -- employee_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    employee_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    age INT NOT NULL CHECK( age >= 18)

);

CREATE TABLE depaartments (
    dept_id INT,
    department_name VARCHAR(100) NOT NULL DEFAULT 'IT'
    FOREIGN KEY(dept_id) REFERENCES employee(employee_id)
)

