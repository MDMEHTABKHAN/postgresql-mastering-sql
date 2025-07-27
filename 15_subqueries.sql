CREATE TABLE emp (
    employee_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    gender VARCHAR(10),
    hire_date DATE,
    job_title VARCHAR(50),
    department_id INT,
    salary NUMERIC(10, 2),
    status VARCHAR(20) DEFAULT 'Active'
);


INSERT INTO emp (
    employee_name, email, phone_number, gender, hire_date, job_title, department_id, salary
) VALUES
('Aarav Sharma', 'aarav.sharma@example.com', '9876543210', 'Male', '2022-05-15', 'Software Engineer', 2, 70000),
('Diya Reddy', 'diya.reddy@example.com', '9123456780', 'Female', '2021-03-10', 'HR Executive', 1, 50000),
('Vivaan Patel', 'vivaan.patel@example.com', '9988776655', 'Male', '2020-08-20', 'Sales Manager', 3, 60000),
('Anaya Iyer', 'anaya.iyer@example.com', '9001122334', 'Female', '2023-01-01', 'Data Analyst', 4, 75000),
('Rohan Gupta', 'rohan.gupta@example.com', '7896541230', 'Male', '2022-07-07', 'Marketing Lead', 5, 68000),
('Meera Nair', 'meera.nair@example.com', '9988001122', 'Female', '2019-11-25', 'Finance Officer', 6, 72000),
('Aditya Verma', 'aditya.verma@example.com', '9665544332', 'Male', '2021-09-09', 'Product Manager', 7, 85000),
('Saanvi Pillai', 'saanvi.pillai@example.com', '9877700011', 'Female', '2020-06-18', 'UI Designer', 8, 64000),
('Kabir Desai', 'kabir.desai@example.com', '9090909090', 'Male', '2018-12-12', 'QA Engineer', 9, 61000),
('Riya Malhotra', 'riya.malhotra@example.com', '9345678901', 'Female', '2023-02-14', 'Backend Developer', 2, 73000);



SELECT * FROM emp;




-- 1. Find employees with salary above the average salary
SELECT employee_name, salary
FROM emp
WHERE salary > (SELECT AVG(salary) FROM emp);

-- 2. Find employees in the same department as 'Aarav Sharma'
SELECT employee_name
FROM emp
WHERE department_id = (SELECT department_id FROM emp WHERE employee_name = 'Aarav Sharma');

-- 3. Find employees hired after the earliest hire date
SELECT employee_name, hire_date
FROM emp
WHERE hire_date > (SELECT MIN(hire_date) FROM emp);

-- 4. Find employees with the highest salary
SELECT employee_name, salary
FROM emp
WHERE salary = (SELECT MAX(salary) FROM emp);

-- 5. Find employees whose salary is less than any employee in department 2
SELECT employee_name, salary
FROM emp
WHERE salary < (SELECT MIN(salary) FROM emp WHERE department_id = 2);

-- 6. Find employees who have the same job title as 'Diya Reddy'
SELECT employee_name, job_title
FROM emp
WHERE job_title = (SELECT job_title FROM emp WHERE employee_name = 'Diya Reddy');

-- 7. Find employees not in department 1
SELECT employee_name, department_id
FROM emp
WHERE department_id NOT IN (SELECT department_id FROM emp WHERE department_id = 1);

-- 8. Find employees whose salary is greater than all employees in department 3

SELECT employee_name, salary
FROM emp
WHERE salary > (SELECT MAX(salary) FROM emp WHERE department_id = 3);




-- 1. Find employees whose salary is below the average salary
SELECT employee_name, salary
FROM emp
WHERE salary < (SELECT AVG(salary) FROM emp);

-- 2. Find employees who joined before 'Anaya Iyer'
SELECT employee_name, hire_date
FROM emp
WHERE hire_date < (SELECT hire_date FROM emp WHERE employee_name = 'Anaya Iyer');

-- 3. Find employees with the same department as 'Rohan Gupta'
SELECT employee_name, department_id
FROM emp
WHERE department_id = (SELECT department_id FROM emp WHERE employee_name = 'Rohan Gupta');

-- 4. Find employees whose salary is equal to the minimum salary
SELECT employee_name, salary
FROM emp
WHERE salary = (SELECT MIN(salary) FROM emp);

-- 5. Find employees who have a salary greater than the salary of 'Vivaan Patel'
SELECT employee_name, salary
FROM emp
WHERE salary > (SELECT salary FROM emp WHERE employee_name = 'Vivaan Patel');

-- 6. Find employees who have the same job title as 'Meera Nair'
SELECT employee_name, job_title
FROM emp
WHERE job_title = (SELECT job_title FROM emp WHERE employee_name = 'Meera Nair');

-- 7. Find employees whose department_id is not in the list of departments with salary above 70000
SELECT employee_name, department_id
FROM emp
WHERE department_id NOT IN (SELECT department_id FROM emp WHERE salary > 70000);

-- 8. Find employees whose salary is between the minimum and maximum salary

SELECT employee_name, salary
FROM emp
WHERE salary > (SELECT MIN(salary) FROM emp)
    AND salary < (SELECT MAX(salary) FROM emp);


