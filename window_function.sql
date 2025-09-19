CREATE TABLE Employee12 (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

INSERT INTO Employee12 (EmpID, Name, Department, Salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'HR', 60000),
(3, 'Charlie', 'IT', 70000),
(4, 'Diana', 'IT', 70000),
(5, 'Eve', 'Finance', 65000),
(6, 'Frank', 'Finance', 50000),
(7, 'Grace', 'HR', 60000),       
(8, 'Hank', 'IT', 70000),        
(9, 'Ivy', 'Finance', 65000),
(10, 'Jack', 'Finance', 50000),
(7, 'Grace', 'HR', 60000),      
(8, 'Hank', 'IT', 70000),    
(9, 'Ivy', 'Finance', 65000),   
(10, 'Jack', 'Finance', 50000);

-- give sequence number even same salary
SELECT Name, Department, Salary,
ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary) AS rownum
FROM employee12;



-- Ties get the same rank, but next rank skips numbers.
SELECT Name, Department, Salary,
RANK() OVER (PARTITION BY Department ORDER BY Salary) AS rnk
FROM employee12;



-- Ties get the same rank, but no gaps in numbering.
SELECT Name, Department, Salary,
DENSE_RANK() OVER (PARTITION BY Department ORDER BY Salary) AS densernk
FROM employee12;



SELECT Name, Department, Salary,
DENSE_RANK() OVER (ORDER BY Salary) AS densernk
FROM employee12;


SELECT Name, Department, Salary,
DENSE_RANK() OVER (PARTITION BY Department) AS densernk
FROM employee12;




SELECT Name, Department, Salary,
DENSE_RANK() OVER () AS densernk
FROM employee12;




WITH HighSalary AS (
    SELECT * FROM Employee12 WHERE Salary > 60000
),
FinanceDept AS (
    SELECT * FROM Employee12 WHERE Department = 'Finance'
)
SELECT * FROM HighSalary
UNION
SELECT * FROM FinanceDept;


WITH HighSalary AS (
    SELECT * FROM Employee12 WHERE Salary > 60000
),
FinanceDept AS (
    SELECT * FROM Employee12 WHERE Department = 'Finance'
)
SELECT * FROM HighSalary
UNION ALL
SELECT * FROM FinanceDept;



WITH Max_salary AS (
    SELECT Department, MAX(Salary) AS MaxSal
    FROM employee12
    GROUP BY Department
)
SELECT * FROM Max_salary;



WITH Max_salary AS (
    SELECT Department, MAX(Salary) AS MaxSal
    FROM employee12
    GROUP BY Department
)
SELECT * 
FROM Max_salary
ORDER BY MaxSal DESC;



-- VIEW


CREATE VIEW employee_summary AS
SELECT EmployeeID, firstName, lastName, Department, Salary
FROM employees
WHERE Salary > 50000;



CREATE INDEX inx_Name ON employee12(Name)