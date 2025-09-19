-- POSTGRESQL 

CREATE TABLE employees (
    EmployeeID SERIAL PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(40) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    DepartmentID INT NOT NULL,
    gender CHAR(1),
    Salary INT CHECK (Salary > 0),
    -- age INT CHECK (age >= 18)
    age ENUM ('M','F', 'O') NOT NULL
);


-- MYSQL

CREATE TABLE employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(40) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    DepartmentID INT NOT NULL,
    gender CHAR(1),
    Salary INT,
    age INT,
    CONSTRAINT chk_salary CHECK (Salary > 0),
    CONSTRAINT chk_age CHECK (age >= 18)
);



--  MS SQL SERVER 


CREATE TABLE employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(40) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    DepartmentID INT NOT NULL,
    gender CHAR(1),
    Salary INT CHECK (Salary > 0),
    age INT CHECK (age >= 18)
);
