
SELECT * FROM  students;

SELECT first_name, last_name, email FROM students;


-- 1. Select all columns from students
SELECT * FROM students;

-- 2. Select specific columns
SELECT first_name, last_name, email FROM students;

-- 3. Select students with a specific last name
SELECT * FROM students WHERE last_name = 'Smith';

-- 4. Select students with email ending in 'gmail.com'
SELECT * FROM students WHERE email LIKE '%gmail.com';

-- 5. Select students ordered by first name
SELECT * FROM students ORDER BY first_name ASC;

-- 6. Select the number of students
SELECT COUNT(*) AS total_students FROM students;

-- 7. Select distinct last names
SELECT DISTINCT last_name FROM students;

-- 8. Select students enrolled after 2023-01-01
SELECT * FROM students WHERE enrollment_date > '2023-01-01';

-- 9. Select students with non-null phone numbers
SELECT * FROM students WHERE phone IS NOT NULL;

-- 10. Select students grouped by city
SELECT city, COUNT(*) AS students_in_city FROM