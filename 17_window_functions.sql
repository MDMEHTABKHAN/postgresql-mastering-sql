

CREATE TABLE employee(
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INT NOT NULL,
    department_id INT NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    salary NUMERIC(10,2) NOT NULL
);

SELECT * FROM employee;

INSERT INTO employee (first_name, last_name, email, age, department_id, department_name, salary) VALUES
('John', 'Doe', 'john.doe@example.com', 30, 1, 'HR', 60000.00),
('Jane', 'Smith', 'jane.smith@example.com', 28, 2, 'Finance', 65000.00),
('Alice', 'Johnson', 'alice.johnson@example.com', 35, 1, 'HR', 70000.00),
('Bob', 'Brown', 'bob.brown@example.com', 40, 2, 'Finance', 75000.00),
('Charlie', 'Davis', 'charlie.davis@example.com', 45, 1, 'HR', 80000.00),
('Diana', 'Wilson', 'diana.wilson@example.com', 32, 2, 'Finance', 72000.00),
('Ethan', 'Garcia', 'ethan.garcia@example.com', 29, 1, 'HR', 68000.00),
('Fiona', 'Martinez', 'fiona.martinez@example.com', 26, 2, 'Finance', 62000.00),
('George', 'Lopez', 'george.lopez@example.com', 38, 1, 'HR', 72000.00),
('Hannah', 'Gonzalez', 'hannah.gonzalez@example.com', 33, 2, 'Finance', 69000.00),
('Ian', 'Perez', 'ian.perez@example.com', 36, 1, 'HR', 71000.00),
('Julia', 'Martinez', 'julia.martinez@example.com', 31, 2, 'Finance', 68000.00),
('Kevin', 'Hernandez', 'kevin.hernandez@example.com', 39, 1, 'HR', 73000.00),
('Laura', 'Lopez', 'laura.lopez@example.com', 34, 2, 'Finance', 71000.00),
('Michael', 'Garcia', 'michael.garcia@example.com', 41, 1, 'HR', 74000.00),
('Nina', 'Rodriguez', 'nina.rodriguez@example.com', 37, 2, 'Finance', 70000.00),
('Oscar', 'Martinez', 'oscar.martinez@example.com', 42, 1, 'HR', 75000.00),
('Paula', 'Hernandez', 'paula.hernandez@example.com', 30, 2, 'Finance', 68000.00),
('Quinn', 'Lopez', 'quinn.lopez@example.com', 27, 1, 'HR', 69000.00),
('Rachel', 'Gonzalez', 'rachel.gonzalez@example.com', 29, 2, 'Finance', 67000.00),
('Steve', 'Perez', 'steve.perez@example.com', 34, 1, 'HR', 72000.00),
('Tina', 'Martinez', 'tina.martinez@example.com', 28, 2, 'Finance', 65000.00),
('Ursula', 'Garcia', 'ursula.garcia@example.com', 45, 1, 'HR', 80000.00),
('Victor', 'Rodriguez', 'victor.rodriguez@example.com', 50, 2, 'Finance', 90000.00),
('Wendy', 'Hernandez', 'wendy.hernandez@example.com', 29, 1, 'HR', 68000.00),
('Xander', 'Lopez', 'xander.lopez@example.com', 28, 2, 'Finance', 65000.00),
('Yara', 'Martinez', 'yara.martinez@example.com', 33, 1, 'HR', 69000.00),
('Zane', 'Gonzalez', 'zane.gonzalez@example.com', 36, 2, 'Finance', 72000.00),
('Alice', 'Smith', 'alice.smith@example.com', 29, 1, 'HR', 68000.00),
('Bob', 'Johnson', 'bob.johnson@example.com', 32, 2, 'Finance', 69000.00),
('Charlie', 'Williams', 'charlie.williams@example.com', 36, 1, 'HR', 72000.00),
('Diana', 'Jones', 'diana.jones@example.com', 31, 2, 'Finance', 68000.00),
('Ethan', 'Brown', 'ethan.brown@example.com', 34, 1, 'HR', 72000.00),
('Fiona', 'Davis', 'fiona.davis@example.com', 29, 2, 'Finance', 67000.00),
('George', 'Garcia', 'george.garcia@example.com', 38, 1, 'HR', 72000.00),
('Hannah', 'Martinez', 'hannah.martinez@example.com', 33, 2, 'Finance', 69000.00),
('Ian', 'Lopez', 'ian.lopez@example.com', 36, 1, 'HR', 71000.00),
('Julia', 'Hernandez', 'julia.hernandez@example.com', 31, 2, 'Finance', 68000.00),
('Kevin', 'Rodriguez', 'kevin.rodriguez@example.com', 39, 1, 'Software Developer', 73000.00),
('Laura', 'Martinez', 'laura.martinez@example.com', 34, 2, 'Software Developer', 71000.00),
('Michael', 'Gonzalez', 'michael.gonzalez@example.com', 41, 1, 'Software Developer', 74000.00),
('Nina', 'Perez', 'nina.perez@example.com', 37, 2, 'Software Developer', 74000.00),
('Oscar', 'Smith', 'oscar.smith@example.com', 42, 1, 'HR', 71000.00),
('Paula', 'Johnson', 'paula.johnson@example.com', 30, 2, 'Software Developer', 74000.00),
('Quinn', 'Williams', 'quinn.williams@example.com', 28, 1, 'Finance', 69000.00);

SELECT * FROM employee;



-- ROW_NUMBER(), RANK(), DENSE_RANK(), NTILE() are ranking/windowing functions.
-- LAG(), LEAD() access data from other rows.
-- Aggregate functions (SUM(), AVG(), etc.) can be used as window functions for running totals, averages, etc.


-- 1. ROW_NUMBER()
-- Assigns a unique sequential integer to rows within a partition.

-- Example 1: Row number for each employee ordered by salary (highest first)
SELECT 
    employee_id, first_name, salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employee;

-- Example 2: Row number within each department (partitioned by department_name)
SELECT 
    employee_id, first_name, department_name, salary,
    ROW_NUMBER() OVER (PARTITION BY department_name ORDER BY salary DESC) AS dept_row_num
FROM employee;

SELECT department_name salary,
    ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary ASC) AS row_num
FROM employee
WHERE salary > 60000;


SELECT department_name, salary,
    SUM(salary) OVER (PARTITION BY department_name ORDER BY salary DESC) AS running_total
FROM employee;

-- 2. RANK()
-- Assigns a rank to each row within a partition, with gaps in ranking for ties.

SELECT 
    employee_id, first_name, salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employee;

-- Example 2: Rank within each department (partitioned by department_name)

SELECT 
    employee_id, first_name, department_name, salary,
    RANK() OVER (PARTITION BY department_name ORDER BY salary DESC) AS dept_rank
FROM employee;

-- 3. DENSE_RANK()
-- Similar to RANK(), but without gaps in ranking for ties.
SELECT 
    employee_id, first_name, salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_salary_rank
FROM employee;

-- Example 2: Dense rank within each department (partitioned by department_name)
SELECT 
    employee_id, first_name, department_name, salary,
    DENSE_RANK() OVER (PARTITION BY department_name ORDER BY salary DESC) AS dept_dense_rank
FROM employee;
-- 4. NTILE()
-- Divides the result set into a specified number of groups and assigns a bucket number to each row.
SELECT 
    employee_id, first_name, salary,
    NTILE(4) OVER (ORDER BY salary DESC) AS salary_quartile
FROM employee;
-- Example 2: NTILE within each department (partitioned by department_name)
SELECT 
    employee_id, first_name, department_name, salary,
    NTILE(4) OVER (PARTITION BY department_name ORDER BY salary DESC) AS dept_quartile
FROM employee;

-- 5. LAG()
-- Accesses data from a previous row in the result set.
SELECT 
    employee_id, first_name, salary,
    LAG(salary) OVER (ORDER BY salary DESC) AS prev_salary
FROM employee;
-- Example 2: LAG within each department (partitioned by department_name)
SELECT 
    employee_id, first_name, department_name, salary,
    LAG(salary) OVER (PARTITION BY department_name ORDER BY salary DESC) AS dept_prev_salary
FROM employee;

-- 6. LEAD()
-- Accesses data from a subsequent row in the result set.
SELECT 
    employee_id, first_name, salary,
    LEAD(salary) OVER (ORDER BY salary DESC) AS next_salary
FROM employee;
-- Example 2: LEAD within each department (partitioned by department_name)
SELECT 
    employee_id, first_name, department_name, salary,
    LEAD(salary) OVER (PARTITION BY department_name ORDER BY salary DESC) AS dept_next_salary
FROM employee;

-- 7. SUM() as a window function
-- Calculates a running total of salaries.
SELECT 
    employee_id, first_name, salary,
    SUM(salary) OVER (ORDER BY salary DESC) AS running_total
FROM employee;
-- Example 2: Running total within each department (partitioned by department_name)
SELECT 
    employee_id, first_name, department_name, salary,
    SUM(salary) OVER (PARTITION BY department_name ORDER BY salary DESC) AS dept_running_total
FROM employee;
-- 8. AVG() as a window function
-- Calculates a running average of salaries.
SELECT 
    employee_id, first_name, salary,
    AVG(salary) OVER (ORDER BY salary DESC) AS running_avg
FROM employee;
-- Example 2: Running average within each department (partitioned by department_name)
SELECT 
    employee_id, first_name, department_name, salary,
    AVG(salary) OVER (PARTITION BY department_name ORDER BY salary DESC) AS dept_running_avg
FROM employee;
-- 9. COUNT() as a window function
-- Counts the number of employees in the result set.
SELECT 
    employee_id, first_name, salary,
    COUNT(*) OVER () AS total_employees
FROM employee;
-- Example 2: Count within each department (partitioned by department_name)
SELECT 
    employee_id, first_name, department_name, salary,
    COUNT(*) OVER (PARTITION BY department_name) AS dept_employee_count
FROM employee;
-- 10. MAX() as a window function
-- Finds the maximum salary in the result set.
SELECT 
    employee_id, first_name, salary,
    MAX(salary) OVER () AS max_salary
FROM employee;
-- Example 2: Max within each department (partitioned by department_name)
SELECT 
    employee_id, first_name, department_name, salary,
    MAX(salary) OVER (PARTITION BY department_name) AS dept_max_salary
FROM employee; 
-- 11. MIN() as a window function
-- Finds the minimum salary in the result set.
SELECT 
    employee_id, first_name, salary,
    MIN(salary) OVER () AS min_salary
FROM employee;
-- Example 2: Min within each department (partitioned by department_name)
SELECT 
    employee_id, first_name, department_name, salary,
    MIN(salary) OVER (PARTITION BY department_name) AS dept_min_salary
FROM employee;

-- 12. FIRST_VALUE() as a window function
-- Retrieves the first salary in the ordered result set.
SELECT 
    employee_id, first_name, salary,
    FIRST_VALUE(salary) OVER (ORDER BY salary DESC) AS highest_salary
FROM employee;
-- Example 2: First value within each department (partitioned by department_name)
SELECT 
    employee_id, first_name, department_name, salary,
    FIRST_VALUE(salary) OVER (PARTITION BY department_name ORDER BY salary DESC) AS dept_highest_salary
FROM employee;
-- 13. LAST_VALUE() as a window function
-- Retrieves the last salary in the ordered result set.
SELECT 
    employee_id, first_name, salary,
    LAST_VALUE(salary) OVER (ORDER BY salary DESC) AS lowest_salary
FROM employee;
-- Example 2: Last value within each department (partitioned by department_name)
SELECT 
    employee_id, first_name, department_name, salary,
    LAST_VALUE(salary) OVER (PARTITION BY department_name ORDER BY salary DESC) AS dept_lowest_salary
FROM employee;