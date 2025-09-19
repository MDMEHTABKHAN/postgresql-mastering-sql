-- 1. How to retrieve the second-highest salary of an employee? 

SELECT MAX(salary)
FROM employee
WHERE salary <(
    SELECT MAAX(salary) FROM employee
);


-- 2. How to get the nth highest salary in   ?



SELECT salary
        FROM (SELECT salary,
        DENSE_RANK() OVER(ORDER BY salary DESC) AS rank
        FROM employee) AS rank_salaries
        WHERE rank = N;

-- 3. How do you fetch all employees whose salary is greater than the average 


SELECT *  
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);   


-- 4. Write a query to display the current date and time in 
SELECT CURRENT_TIMESTAMP; 





-- 5. How to find duplicate records in a table? 
SELECT department_name, COUNT(*)
FROM employee
GROUP BY department_name
HAVING COUNT(*) > 1;



-- 6. How can you delete duplicate rows


WITH CTE AS ( 
SELECT department_name,
ROW_NUMBER() OVER (PARTITION BY department_name ORDER BY 
salary) AS row_num 
FROM employee
) 
DELETE FROM CTE WHERE row_num > 1;





-- 7. How to get the common records from two tables? 
SELECT *  FROM employee
INTERSECT  
SELECT *  FROM empl_1; 



-- 8. How to retrieve the last 10 records from a table?


SELECT * FROM employee
ORDER BY department_id
LIMIT 10;



-- 9. How do you fetch the top 5 employees with the highest salaries?

SELECT * FROM employee
ORDER BY salary DESC
LIMIT 5;


-- 10. How to calculate the total salary of all employees?

SELECT SUM(salary)
FROM employee;

-- 11. How to write a query to find all employees who joined in the year 2020?


SELECT *  
FROM employee
WHERE YEAR(join_date) = 2020; 



-- 12. Write a query to find employees whose name starts with 'A'. 

SELECT * FROM employee
WHERE first_name LIKE 'A%';




-- 13. How can you find the employees who do not have a manager?


SELECT * FROM employee
WHERE manager_id IS NULL;



-- 14. How to find the department with the highest number of employees?


SELECT department_id, COUNT(*)  
FROM employee  
GROUP BY department_id  
ORDER BY COUNT(*) DESC  
LIMIT 1;




-- 15. How to get the count of employees in each department? 

SELECT department_id, COUNT(*)  
FROM employee
GROUP BY department_id;



-- 16. Write a query to fetch employees having the highest salary in each 


SELECT department_id, employee_id, salary 
FROM employee AS e  
WHERE salary = (SELECT MAX(salary)  
FROM employee  
WHERE department_id = e.department_id);


-- 17. How to write a query to update the salary of all employees by 10%? 
UPDATE employees  
SET salary = salary * 1.1;




-- 18. How can you find employees whose salary is between 50,000 and 1,00,000? 

SELECT *  
FROM employee
WHERE salary BETWEEN 50000 AND 100000; 

-- 19. How to find the youngest employee in the organization? 

SELECT *  
FROM employee 
ORDER BY birth_date DESC  
LIMIT 1; 

-- 20. How to fetch the first and last record from a table? 

(SELECT * FROM employee ORDER BY employee_id ASC LIMIT 1)
UNION ALL 
(SELECT * FROM employee ORDER BY employee_id DESC LIMIT 1);




-- 21. How can you find the total number of departments in the company? 

SELECT COUNT(DISTINCT department_id)  
FROM employee; 



-- How to find the department with the lowest average salary? 

SELECT department_id, AVG(salary)  
FROM employee  
GROUP BY department_id  
ORDER BY AVG(salary) ASC  
LIMIT 1;







