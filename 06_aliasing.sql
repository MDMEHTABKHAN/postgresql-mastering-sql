-- 1. Alias for first_name column
SELECT first_name AS student_name FROM students;

-- 2. Alias for last_name column
SELECT last_name AS surname FROM students;

-- 3. Alias for email column
SELECT email AS student_email FROM students;

-- 4. Alias for age column
SELECT age AS student_age FROM students;

-- 5. Alias for grade column
SELECT grade AS student_grade FROM students;

-- 6. Alias for id column
SELECT id AS student_id FROM students;

-- 7. Alias for concatenated name
SELECT first_name || ' ' || last_name AS full_name FROM students;

-- 8. Alias for uppercase first_name
SELECT UPPER(first_name) AS upper_first_name FROM students;

-- 9. Alias for length of email
SELECT LENGTH(email) AS email_length FROM students;

-- 10. Alias for calculated age next year
SELECT age + 1 AS age_next_year FROM students;