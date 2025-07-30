

CREATE INDEX employee_first_name ON employee(first_name);

CREATE INDEX employee_last_name ON employee(last_name);

CREATE INDEX department_name ON employee(department_name);

CREATE INDEX employee_salary_department ON employee(salary, department_name);

DROP INDEX IF EXISTS employee_first_name;
DROP INDEX IF EXISTS employee_last_name;
DROP INDEX IF EXISTS department_name;
DROP INDEX IF EXISTS employee_salary_department;

CREATE UNIQUE INDEX employee_email ON employee(email);

