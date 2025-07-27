-- 1. Select all columns from students
SELECT * FROM students;

-- 2. Select specific columns
SELECT first_name, last_name FROM students;

-- 3. Select students from a specific city
SELECT * FROM students WHERE city = 'London';

-- 4. Select students older than 20
SELECT * FROM students WHERE age > 20;

-- 5. Select students ordered by age
SELECT * FROM students ORDER BY age DESC;

-- 6. Select distinct cities
SELECT DISTINCT city FROM students;

-- 7. Select students with email ending in 'gmail.com'
SELECT * FROM students WHERE email LIKE '%gmail.com';

-- 8. Select students enrolled after a certain date
SELECT * FROM students WHERE enrollment_date > '2025-01-01';

-- 9. Select students with non-null phone numbers
SELECT * FROM students WHERE phone IS NOT NULL;

-- 10. Select the number of students
SELECT COUNT(*) FROM students;
