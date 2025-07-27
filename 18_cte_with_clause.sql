-- 1. CTE to calculate average salary and list employees above average
WITH avg_sal AS (
    SELECT AVG(salary) AS avg_salary FROM emp
)
SELECT employee_name, salary
FROM emp, avg_sal
WHERE emp.salary > avg_sal.avg_salary;

-- 2. CTE to find employees with minimum salary
WITH min_sal AS (
    SELECT MIN(salary) AS min_salary 
    FROM emp
)
SELECT employee_name, salary
FROM emp, min_sal
WHERE emp.salary = min_sal.min_salary;

-- 3. CTE to list employees in department 2

WITH dept2_emp AS (
    SELECT employee_name, department_id
    FROM emp
    WHERE department_id = 2
)
SELECT * FROM dept2_emp;

-- 4. CTE to count employees per department

WITH emp_count AS (
    SELECT department_id, COUNT(*) AS total_emp
    FROM emp 
    GROUP BY department_id
)
SELECT * FROM emp_count;

-- 5. CTE to find employees hired after 2022-01-01

WITH recent_hires AS (
    SELECT employee_name, hire_date
    FROM emp 
    WHERE hire_date > '2022-01-01'
)
SELECT * FROM recent_hires;


