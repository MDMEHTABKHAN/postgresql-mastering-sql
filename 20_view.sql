
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