

SELECT * FROM empl_1;

EXPLAIN SELECT * FROM empl_1 WHERE salary >= 50000;


EXPLAIN ANALYZE SELECT * FROM empl_1 WHERE salary >= 50000;


SELECT MAX(salary) AS max_salary, AVG(salary) AS avg_salary, MIN(salary) AS min_salary
FROM empl_1;


SELECT MAX(salary) AS max_salary, AVG(salary) AS avg_salary, MIN(salary) AS min_salary
FROM empl_1
WHERE department = 'Sales';


SELECT DISTINCT department, salary
FROM empl_1
WHERE salary > (
    SELECT AVG(salary) FROM empl_1
);


SELECT first_name, salary FROM empl_1 WHERE salary > (
    SELECT AVG(salary) FROM empl_1
);


SELECT first_name, last_name, salary
FROM empl_1
WHERE salary = (
    SELECT MAX(salary) FROM empl_1
);


CREATE INDEX ind_salary on empl_1(salary);


CREATE INDEX idx_department ON empl_1(department);

DROP INDEX idx_department;


pg_indexes;




