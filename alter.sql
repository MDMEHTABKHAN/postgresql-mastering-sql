
CREATE TABLE Departments (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dept_id INT,
    salary NUMERIC(10,2),
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Projects (
    proj_id SERIAL PRIMARY KEY,
    proj_name VARCHAR(100),
    emp_id INT,
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

-- ALTER commands in PostgreSQL
ALTER TABLE Employees ADD COLUMN email VARCHAR(150);
ALTER TABLE Employees ALTER COLUMN salary TYPE NUMERIC(12,2);
ALTER TABLE Employees DROP COLUMN email;
ALTER TABLE Employees RENAME COLUMN name TO full_name;
ALTER TABLE Employees ADD CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES Departments(dept_id);
ALTER TABLE Employees DROP CONSTRAINT fk_dept;
ALTER TABLE Employees RENAME TO Staff;
