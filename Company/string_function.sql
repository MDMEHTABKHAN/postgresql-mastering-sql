

SELECT * FROM empl_1;


SELECT LEFT(first_name, 3) FROM empl_1;
SELECT RIGHT(first_name, 4) FROM empl_1;

SELECT SUBSTRING(first_name, 1, 4) FROM empl_1;


SELECT first_name || ' ' || last_name AS full_name FROM empl_1;


SELECT UPPER(first_name) FROM empl_1;

SELECT LOWER(first_name) FROM empl_1;



SELECT REVERSE(first_name) FROM empl_1;