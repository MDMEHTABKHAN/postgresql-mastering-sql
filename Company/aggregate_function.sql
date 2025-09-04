


SELECT COUNT(*) FROM empl_1;
SELECT COUNT(city) FROM empl_1;
SELECT MAX(salary) FROM empl_1;
SELECT MIN(salary) FROM empl_1;
SELECT SUM(salary) FROM empl_1;

SELECT department, MAX(salary) 
FROM empl_1
GROUP BY department;

SELECT department, MIN(salary)
FROM empl_1
GROUP BY departments;

SELECT department, designation, MAX(salary)
FROM empl_1
GROUP BY department, designation;


SELECT department, SUM(salary)
FROM empl_1
WHERE salary > 67000
GROUP BY department;

-- 1. Find the average salary per department, but only for departments with more than 3 employees
SELECT department, AVG(salary)
FROM empl_1
GROUP BY department
HAVING COUNT(*) > 3;


-- 2. Find the department with the highest total salary expense
SELECT department
FROM empl_1
GROUP BY department
ORDER BY SUM(salary) DESC
LIMIT 1;

-- 3. Show the average salary for each designation within each department, but only for designations with at least 2 employees
SELECT department, designation, AVG(salary)
FROM empl_1
GROUP BY department, designation
HAVING COUNT(*) >= 2;

-- 4. For each department, show the difference between the highest and lowest salary
SELECT department, MAX(salary) - MIN(salary) AS salary_range
FROM empl_1
GROUP BY department;