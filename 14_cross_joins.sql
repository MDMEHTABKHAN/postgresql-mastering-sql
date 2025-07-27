-- 1. List all possible employee and department pairs
SELECT e.employee_name, d.department_name
FROM employees e
CROSS JOIN departments d;

-- 2. List all possible employee and project pairs
SELECT e.employee_name, p.project_name
FROM employees e
CROSS JOIN projects p;

-- 3. List all possible department and project pairs
SELECT d.department_name, p.project_name
FROM departments d
CROSS JOIN projects p;

-- 4. List all possible combinations of employee, department, and project
SELECT e.employee_name, d.department_name, p.project_name
FROM employees e
CROSS JOIN departments d
CROSS JOIN projects p;

-- 5. List all possible pairs of employees (including self)

SELECT e1.employee_name AS employee1, e2.employee_name AS employee2
FROM employees e1
CROSS JOIN employees e2;
