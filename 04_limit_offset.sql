-- 1. Get first 5 students
SELECT * FROM students LIMIT 5;

-- 2. Get first 10 students
SELECT * FROM students LIMIT 10;

-- 3. Get next 5 students after skipping first 5
SELECT * FROM students LIMIT 5 OFFSET 5;

-- 4. Get next 10 students after skipping first 10
SELECT * FROM students LIMIT 10 OFFSET 10;

-- 5. Get students ordered by age, first 7
SELECT * FROM students ORDER BY age ASC LIMIT 7;

-- 6. Get students ordered by enrollment_date, skip first 3
SELECT * FROM students ORDER BY enrollment_date DESC LIMIT 5 OFFSET 3;

-- 7. Get students with city 'Paris', first 4
SELECT * FROM students WHERE city = 'Paris' LIMIT 4;

-- 8. Get students with age > 20, skip first 2
SELECT * FROM students WHERE age > 20 LIMIT 5 OFFSET 2;

-- 9. Get students ordered by last_name, first 8
SELECT * FROM students ORDER BY last_name LIMIT 8;

-- 10. Get students with non-null phone, skip first 6
SELECT * FROM students WHERE phone IS NOT NULL LIMIT 5 OFFSET 6;

-- 11. Get students with email ending in 'gmail.com', first 3
SELECT * FROM students WHERE email LIKE '%gmail.com' LIMIT 3;

-- 12. Get students grouped by city, show first 5 groups
SELECT city, COUNT(*) FROM students GROUP BY city LIMIT 5;

-- 13. Get students ordered by first_name, skip first 10
SELECT * FROM students ORDER BY first_name LIMIT 10 OFFSET 10;

-- 14. Get students enrolled after 2023-01-01, first 6
SELECT * FROM students WHERE enrollment_date > '2023-01-01' LIMIT 6;

-- 15. Get students with age between 18 and 25, skip first 4
SELECT * FROM students WHERE age BETWEEN 18 AND 25 LIMIT