SELECT DISTINCT first_name FROM students;


-- 1. Distinct first names
SELECT DISTINCT first_name FROM students;

-- 2. Distinct last names
SELECT DISTINCT last_name FROM students;

-- 3. Distinct cities
SELECT DISTINCT city FROM students;

-- 4. Distinct ages
SELECT DISTINCT age FROM students;

-- 5. Distinct combinations of first and last name
SELECT DISTINCT first_name, last_name FROM students;

-- 6. Distinct combinations of city and age
SELECT DISTINCT city, age FROM students;

-- 7. Distinct combinations of first name and city
SELECT DISTINCT first_name, city FROM students;

-- 8. Distinct combinations of last name and age
SELECT DISTINCT last_name, age FROM students;

-- 9. Distinct combinations of email and phone
SELECT DISTINCT email, phone FROM students;

-- 10. Distinct combinations of city, age, and enrollment_date
SELECT DISTINCT city, age, enrollment_date
