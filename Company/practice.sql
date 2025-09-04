


-- 1. View all data
SELECT * FROM empl_1;

-- 2. Select specific columns
SELECT first_name, last_name, salary FROM empl_1;

-- 3. Use column alias
SELECT first_name AS fname, last_name AS lname FROM empl_1;

-- 4. Remove duplicates
SELECT DISTINCT department FROM empl_1;

-- 5. Sort by salary ascending
SELECT * FROM empl_1 ORDER BY salary ASC;
SELECT * FROM empl_1 ORDER BY salary;

-- 6. Sort by salary descending
SELECT * FROM empl_1 ORDER BY salary DESC;

-- 7. Filter employees from IT department
SELECT * FROM empl_1 WHERE department = 'IT';

-- 8. Employees with salary greater than 50000
SELECT * FROM empl_1 WHERE salary > 50000;


SELECT * FROM empl_1 WHERE salary >=50000;

-- 9. Employees with salary between 40000 and 60000
SELECT * FROM empl_1 WHERE salary BETWEEN 40000 AND 60000;

-- 10. Employees joined after 2023-01-01
SELECT * FROM empl_1 WHERE joining_date > '2023-01-01';

SELECT * FROM empl_1 WHERE department IN ('IT', 'HR');


-- 11. Employees whose first name starts with 'A'
SELECT * FROM empl_1 WHERE first_name LIKE 'A%';

-- 12. Employees whose last name ends with 'n'
SELECT * FROM empl_1 WHERE last_name LIKE '%n';

-- 13. Employees from Hyderabad or Delhi
SELECT * FROM empl_1 WHERE city IN ('Hyderabad', 'Delhi');


SELECT * FROM empl_1 WHERE city NOT  IN ('Hyderabad', 'Delhi')

-- 14. Employees not from Mumbai
SELECT * FROM empl_1 WHERE city <> 'Mumbai';

-- 15. Employees with null department
SELECT * FROM empl_1 WHERE department IS NULL;

SELECT * FROM empl_1 WHERE department IS NOT NULL;







-- 16. Count total employees
SELECT COUNT(*) FROM empl_1;

-- 17. Find average salary
SELECT AVG(salary) FROM empl_1;

-- 18. Find maximum salary
SELECT MAX(salary) FROM empl_1;

-- 19. Find minimum salary
SELECT MIN(salary) FROM empl_1;

-- 20. Find sum of salaries
SELECT SUM(salary) FROM empl_1;


-- 21. Count employees by department
SELECT department, COUNT(*) FROM empl_1 GROUP BY department;

-- 22. Average salary by department
SELECT department, AVG(salary) FROM empl_1 GROUP BY department;

-- 23. Max salary by city
SELECT city, MAX(salary) FROM empl_1 GROUP BY city;

SELECT department, MAX(salary) FROM empl_1 GROUP BY department;

-- 24. Departments having more than 5 employees
SELECT department, COUNT(*) 
FROM empl_1 
GROUP BY department 
HAVING COUNT(*) > 5;

-- 25. Departments with average salary above 60000
SELECT department, AVG(salary) 
FROM empl_1 
GROUP BY department 
HAVING AVG(salary) > 60000;


-- 30. Employees earning more than average salary
SELECT * FROM empl_1
WHERE salary > (SELECT AVG(salary) FROM empl_1);

-- 31. Employees who earn the maximum salary
SELECT * FROM empl_1
WHERE salary = (SELECT MAX(salary) FROM empl_1);

-- 32. Employees from departments having average salary > 70000
SELECT * FROM empl_1
WHERE department IN (
    SELECT department 
    FROM empl_1 
    GROUP BY department 
    HAVING AVG(salary) > 70000
);


-- 33. Rank employees by salary
SELECT id, first_name, salary,
    RANK() OVER (ORDER BY salary DESC) AS rank
FROM empl_1;

-- 34. Dense Rank by salary
SELECT id, first_name, salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank
FROM empl_1;

-- 35. Row number for each employee
SELECT id, first_name, salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM empl_1;

-- 36. Running total of salary
SELECT id, first_name, salary,
    SUM(salary) OVER (ORDER BY id) AS running_total
FROM empl_1;

-- 37. Partition by department (rank salaries inside department)
SELECT id, first_name, department, salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dept_rank
FROM empl_1;



-- 38. Insert a record
INSERT INTO empl_1 (id, first_name, last_name, department, designation, city, salary, joining_date)
VALUES (1, 'Amit', 'Kumar', 'IT', 'Developer', 'Hyderabad', 60000, '2023-05-10');

-- 39. Update salary
UPDATE empl_1 SET salary = 65000 WHERE id = 1;

UPDATE empl_1 SET salary = 200000, first_name = 'Mehtab' WHERE id = 2;


-- 40. Delete an employee
DELETE FROM empl_1 WHERE id = 1;
DELETE FROM empl_1;
DELETE FROM empl_1 WHERE id = 2 AND first_name = 'Mehtab';




-- 46. Create a simple view for employee names and salaries
CREATE VIEW emp_salary_view AS
SELECT id, first_name, last_name, salary
FROM empl_1;

-- 47. Use the view
SELECT * FROM emp_salary_view;

SELECT * FROM emp_salary_view WHERE salary >= 80000;

-- 48. Create a view with condition (only IT department employees)
CREATE VIEW it_employees AS
SELECT id, first_name, last_name, salary
FROM empl_1
WHERE department = 'IT';

SELECT * FROM it_employees;

-- 49. Drop a view
DROP VIEW it_employees, emp_salary_view;

-- 50. Update through view (possible if simple view)
UPDATE emp_salary_view SET salary = 75000 WHERE id = 2;



CREATE VIEW max_salary AS
SELECT first_name, last_name, department FROM empl_1
WHERE salary = (
    SELECT MAX(salary) FROM empl_1
);

SELECT * FROM max_salary;

DROP VIEW max_salary;


-- 51. Simple CTE: Employees with salary > 60000
WITH high_salary AS (
    SELECT id, first_name, department, salary
    FROM empl_1
    WHERE salary > 60000
)
SELECT * FROM high_salary;

-- 52. CTE with Aggregation: Average salary by department
WITH dept_avg AS (
    SELECT department, AVG(salary) AS avg_salary
    FROM empl_1
    GROUP BY department
)
SELECT * FROM dept_avg WHERE avg_salary > 50000;

-- 53. Multiple CTEs
WITH emp_count AS (
    SELECT department, COUNT(*) AS total_emp
    FROM empl_1
    GROUP BY department
),
high_paid AS (
    SELECT department, MAX(salary) AS max_salary
    FROM empl_1
    GROUP BY department
)
SELECT e.department, e.total_emp, h.max_salary
FROM emp_count e
JOIN high_paid h ON e.department = h.department;




SELECT first_name, last_name, department, salary,
    CASE
    WHEN salary >= 90000 THEN 'High'
    WHEN salary BETWEEN 85000 AND 55000 THEN'Medium'
    ELSE 'Low'
    END AS salary_category
FROM empl_1;    



SELECT id, first_name, salary,
    CASE 
           WHEN salary > 100000 THEN salary * 0.20
           WHEN salary BETWEEN 90000 AND 75000 THEN salary * 0.10
           ELSE salary * 0.05
    END AS bonus
FROM empl_1;



SELECT id, first_name, department,
    CASE department
        WHEN 'IT' THEN 'Technical'
        WHEN 'HR' THEN 'Management'
        WHEN 'Finance' THEN 'Support'
        ELSE 'Other'
    END AS dept_type
FROM empl_1;




SELECT id, first_name, department, salary,
    CASE 
        WHEN department = 'HR' THEN salary * 0.05
        WHEN department = 'IT' THEN salary * 0.10
        ELSE salary * 0.02
    END AS dept_bonus
FROM empl_1;




SELECT * FROM empl_1;





SELECT MAX(salary)
FROM empl_1
WHERE salary < (SELECT MAX(salary) FROM empl_1);




SELECT salary
FROM(SELECT salary, DENSE_RANK() OVER(ORDER BY salary) AS rank_
    FROM empl_1) AS ranked_salary
    WHERE rank_ = N;




SELECT * FROM empl_1 WHERE salary > (SELECT avg(salary) AS avg_salary FROM empl_1);


SELECT department, COUNT(*)
FROM empl_1
GROUP BY department
HAVING COUNT(*) > 1;

SELECT * FROM empl_1 ORDER BY id DESC LIMIT 10;


SELECT * FROM empl_1 ORDER BY salary LIMIT 5;


SELECT sum(salary) FROM empl_1;

SELECT * FROM empl_1 WHERE YEAR(joining_date) = 2022;

SELECT * FROM empl_1 WHERE first_name LIKE 'A%';

SELECT * FROM empl_1 WHERE id IS NULL;


SELECT * FROM empl_1 WHERE last_name IS NULL;
SELECT * FROM empl_1 WHERE first_name IS NOT NULL;


START TRANSACTION;

UPDATE empl_1
SET salary = salary * 0.50;

SELECT * FROM empl_1;

ROLLBACK;

