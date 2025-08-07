
SELECT * FROM   employee;


SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employee;

SELECT CONCAT('Hello', ' ', 'World') AS greeting;

SELECT LENGTH(first_name) AS first_name_length,
    LENGTH(last_name) AS last_name_length
FROM employee;



SELECT NOW() AS current_time;

SELECT CURRENT_DATE AS current_date;

SELECT EXTRACT(YEAR FROM NOW()) AS current_year,
    EXTRACT(MONTH FROM NOW()) AS current_month,
    EXTRACT(DAY FROM NOW()) AS current_day,
    EXTRACT(HOUR FROM NOW()) AS current_hour,
    EXTRACT(MINUTE FROM NOW()) AS current_minute,
    EXTRACT(SECOND FROM NOW()) AS current_second
FROM employee;


