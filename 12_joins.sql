-- INNER JOIN

-- 1. List employees with their department names

SELECT e.employee_name, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;

-- 2. List projects with employee names

SELECT p.project_name, e.employee_name
FROM projects p
INNER JOIN employees e ON p.employee_id = e.employee_id;

-- 3. List employees with their project names

SELECT e.employee_name, p.project_name
FROM employees e
INNER JOIN projects p ON e.employee_id = p.employee_id;

-- 4. List employees, department names, and project names
SELECT e.employee_name, d.department_name, p.project_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
INNER JOIN projects p ON e.employee_id = p.employee_id;

-- 5. Count projects per employee

SELECT e.employee_name, COUNT(p.project_id) AS project_count
FROM employees e
INNER JOIN projects p ON e.employee_id = p.employee_id
GROUP BY e.employee_name;

-- 6. List departments with employee names and project names
SELECT d.department_name, e.employee_name, p.project_name
FROM departments d
INNER JOIN employees e ON d.department_id = e.department_id
INNER JOIN projects p ON e.employee_id = p.employee_id;

-- 7. List employees with salary and department name
SELECT e.employee_name, e.salary, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;

-- 8. List projects with employee salary
SELECT p.project_name, e.salary
FROM projects p
INNER JOIN employees e ON p.employee_id = e.employee_id;

-- 9. List employees working on projects in each department
SELECT d.department_name, e.employee_name, p.project_name
FROM departments d
INNER JOIN employees e ON d.department_id = e.department_id
INNER JOIN projects p ON e.employee_id = p.employee_id;

-- 10. List employees and their departments only if they have a project
SELECT e.employee_name, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
INNER JOIN projects p ON e.employee_id = p.employee_id;

-- LEFT JOIN

-- 1. List all employees with their department names (even if no department)
SELECT e.employee_name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id;

-- 2. List all projects with employee names (even if no employee assigned)
SELECT p.project_name, e.employee_name
FROM projects p
LEFT JOIN employees e ON p.employee_id = e.employee_id;

-- 3. List all employees with their project names (even if no project)
SELECT e.employee_name, p.project_name
FROM employees e
LEFT JOIN projects p ON e.employee_id = p.employee_id;

-- 4. List all departments with employee names (even if no employees)
SELECT d.department_name, e.employee_name
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id;

-- 5. List all employees and their departments, show NULL for missing department
SELECT e.employee_name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id;

-- 6. List all employees and their projects, show NULL for missing project
SELECT e.employee_name, p.project_name
FROM employees e
LEFT JOIN projects p ON e.employee_id = p.employee_id;

-- 7. List all departments and count of employees
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

-- 8. List all employees and count of projects
SELECT e.employee_name, COUNT(p.project_id) AS project_count
FROM employees e
LEFT JOIN projects p ON e.employee_id = p.employee_id
GROUP BY e.employee_name;

-- 9. List all projects and their employee's department
SELECT p.project_name, d.department_name
FROM projects p
LEFT JOIN employees e ON p.employee_id = e.employee_id
LEFT JOIN departments d ON e.department_id = d.department_id;

-- 10. List all departments and their projects
SELECT d.department_name, p.project_name
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
LEFT JOIN projects p ON e.employee_id = p.employee_id;

-- RIGHT JOIN

-- 1. List all departments with employee names (even if no employees)
SELECT d.department_name, e.employee_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id;

-- 2. List all projects with employee names (even if no employee assigned)
SELECT e.employee_name, p.project_name
FROM employees e
RIGHT JOIN projects p ON e.employee_id = p.employee_id;

-- 3. List all departments and their employees, show NULL for missing employee
SELECT d.department_name, e.employee_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id;

-- 4. List all projects and their employees, show NULL for missing employee
SELECT p.project_name, e.employee_name
FROM employees e
RIGHT JOIN projects p ON e.employee_id = p.employee_id;

-- 5. List all departments and count of employees
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

-- 6. List all projects and count of employees assigned
SELECT p.project_name, COUNT(e.employee_id) AS employee_count
FROM employees e
RIGHT JOIN projects p ON e.employee_id = p.employee_id
GROUP BY p.project_name;

-- 7. List all departments and their projects
SELECT d.department_name, p.project_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id
RIGHT JOIN projects p ON e.employee_id = p.employee_id;

-- 8. List all projects and their department names
SELECT p.project_name, d.department_name
FROM employees e
RIGHT JOIN projects p ON e.employee_id = p.employee_id
RIGHT JOIN departments d ON e.department_id = d.department_id;

-- 9. List all departments, employees, and projects (right join chain)
SELECT d.department_name, e.employee_name, p.project_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id
RIGHT JOIN projects p ON e.employee_id = p.employee_id;

-- 10. List all projects and their employee names, show NULL for missing employee
SELECT p.project_name, e.employee_name
FROM employees e
RIGHT JOIN projects p ON e.employee_id = p.employee_id;

-- FULL JOIN

-- 1. List all employees and departments, show NULLs where no match
SELECT e.employee_name, d.department_name
FROM employees e
FULL JOIN departments d ON e.department_id = d.department_id;

-- 2. List all employees and projects, show NULLs where no match

SELECT e.employee_name, p.project_name
FROM employees e
FULL JOIN projects p ON e.employee_id = p.employee_id;

-- 3. List all departments and projects, show NULLs where no match
SELECT d.department_name, p.project_name
FROM departments d
FULL JOIN employees e ON d.department_id = e.department_id
FULL JOIN projects p ON e.employee_id = p.project_id;

-- 4. List all employees, departments, and projects, show NULLs where no match

SELECT e.employee_name, d.department_name, p.project_name
FROM employees e
FULL JOIN departments d ON e.department_id = d.department_id
FULL JOIN projects p ON e.employee_id = p.employee_id;

-- 5. List all departments and count of employees, show NULLs where no match

SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM employees e
FULL JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

-- 6. List all projects and count of employees assigned, show NULLs where no match

SELECT p.project_name, COUNT(e.employee_id) AS employee_count
FROM employees e
FULL JOIN projects p ON e.employee_id = p.employee_id
GROUP BY p.project_name;

-- 7. List all departments and their projects, show NULLs where no match

SELECT d.department_name, p.project_name
FROM departments d
FULL JOIN employees e ON d.department_id = e.department_id
FULL JOIN projects p ON e.employee_id = p.employee_id;

-- 8. List all employees and their departments and projects, show NULLs where no match

SELECT e.employee_name, d.department_name, p.project_name
FROM employees e
FULL JOIN departments d ON e.department_id = d.department_id
FULL JOIN projects p ON e.employee_id = p.employee_id;

-- 9. List all employees, departments, and projects, show NULLs where no match

SELECT e.employee_name, d.department_name, p.project_name
FROM employees e
FULL JOIN departments d ON e.department_id = d.department_id
FULL JOIN projects p ON e.employee_id = p.employee_id;

-- 10. List all projects and their employee names, show NULLs where no match

SELECT p.project_name, e.employee_name
FROM projects p
FULL JOIN employees e ON p.employee_id = e.employee_id;