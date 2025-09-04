
CREATE VIEW employee_details AS
SELECT first_name, last_name, department_name, department_id, salary
FROM employee;


SELECT * FROM employee_details;


CREATE OR REPLACE VIEW employee_salary_view AS
SELECT employee_id, first_name, last_name, salary
FROM employee;

SELECT * FROM employee_salary_view;

CREATE VIEW highest_paid_employees AS
SELECT first_name, last_name, salary
FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);

SELECT * FROM highest_paid_employees;

DROP VIEW IF EXISTS employee_details;
DROP VIEW IF EXISTS employee_salary_view;
DROP VIEW IF EXISTS highest_paid_employees;

CREATE VIEW above_average_salary AS
SELECT first_name, last_name, department_name, salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

SELECT * FROM above_average_salary;

DROP VIEW IF EXISTS above_average_salary;



-- Materialized view for average salary per department
CREATE MATERIALIZED VIEW avg_salary_per_department AS
SELECT 
    department_id,
    department_name,
    AVG(salary) AS average_salary
FROM employee
GROUP BY department_id, department_name;

SELECT * FROM avg_salary_per_department;

-- Materialized view for employees above company average salary
CREATE MATERIALIZED VIEW employees_above_avg_salary AS
SELECT 
    employee_id,
    first_name,
    last_name,
    department_name,
    salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

SELECT * FROM employees_above_avg_salary;



