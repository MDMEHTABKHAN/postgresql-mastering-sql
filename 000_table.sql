

CREATE TABLE empl(
    emp_id INT,
    firstname VARCHAR(70) NOT NULL,
    lastname VARCHAR(50),
    email VARCHAR(47) UNIQUE,
    hire_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

INSERT INTO empl(emp_id, firstname, lastname, email)
VALUES
(1, 'rahul', 'singh', 'rahulsingh123@gmail.com');


INSERT INTO empl(emp_id, firstname, lastname, email)

VALUES
(2,'shyam', 'khan', 'shyamkhan123@gmail.com'),
(3, 'arbaj', 'kha', 'arbajkhan@gmail.com');

SELECT * FROM empl;


CREATE TABLE company(
    employee_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    -- employee_id SERIAL PRIMARY KEY,
    -- employee_id BIGSERIAL PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(40) NOT NULL,
    gender CHAR(1) NOT NULL CHECK (gender IN ('M', 'F', 'O'))
    hire_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

);



DROP DATABASE IF EXISTS emp;
DROP TABLE IF EXISTS empl;
DROP TABLE empl;
DELETE FROM empl;

DELETE FROM empl WHERE empl_id = 1;





CREATE TABLE categories (
    category_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE suppliers (
    supplier_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_email VARCHAR(100) UNIQUE
);

CREATE TABLE products (
    product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL CHECK (price > 0),
    stock INT DEFAULT 0 CHECK (stock >= 0),
    category_id INT REFERENCES categories(category_id),
    supplier_id INT REFERENCES suppliers(supplier_id)
);


CREATE TABLE products (
    product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

