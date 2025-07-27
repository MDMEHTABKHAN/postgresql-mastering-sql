-- 1. List employees who share the same department

SELECT e1.employee_name AS employee1, e2.employee_name AS employee2, e1.department_id
FROM employees e1
INNER JOIN employees e2 ON e1.department_id = e2.department_id AND e1.employee_id <> e2.employee_id;

-- 2. List employees with the same salary

SELECT e1.employee_name AS employee1, e2.employee_name AS employee2, e1.salary
FROM employees e1
INNER JOIN employees e2 ON e1.salary = e2.salary AND e1.employee_id <> e2.employee_id;

-- 3. Find employees whose name starts with the same letter

SELECT e1.employee_name AS employee1, e2.employee_name AS employee2
FROM employees e1
INNER JOIN employees e2 ON LEFT(e1.employee_name, 1) = LEFT(e2.employee_name, 1) AND e1.employee_id <> e2.employee_id;

-- 4. List employees with higher salary than others in the same department

SELECT e1.employee_name AS higher_paid, e2.employee_name AS lower_paid, e1.department_id
FROM employees e1
INNER JOIN employees e2 ON e1.department_id = e2.department_id AND e1.salary > e2.salary;

-- 5. List pairs of employees (excluding self) in the same department

SELECT e1.employee_name AS employee1, e2.employee_name AS employee2, d.department_name
FROM employees e1
INNER JOIN employees e2 ON e1.department_id = e2.department_id AND e1.employee_id <> e2.employee_id
INNER JOIN departments d ON e1.department_id =