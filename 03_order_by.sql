-- 1. Order students by first_name ascending
SELECT * FROM students ORDER BY first_name ASC;

-- 2. Order students by last_name descending
SELECT * FROM students ORDER BY last_name DESC;

-- 3. Order students by age ascending
SELECT * FROM students ORDER BY age ASC;

-- 4. Order students by age descending
SELECT * FROM students ORDER BY age DESC;

-- 5. Order students by enrollment_date ascending
SELECT * FROM students ORDER BY enrollment_date ASC;

-- 6. Order students by enrollment_date descending
SELECT * FROM students ORDER BY enrollment_date DESC;

-- 7. Order students by city ascending
SELECT * FROM students ORDER BY city ASC;

-- 8. Order students by city descending
SELECT * FROM students ORDER BY city DESC;

-- 9. Order students by email ascending
SELECT * FROM students ORDER BY email ASC;

-- 10. Order students by phone descending
SELECT * FROM students ORDER BY phone DESC;

-- 11. Order students by first_name, then last_name
SELECT * FROM students ORDER BY first_name ASC, last_name ASC;

-- 12. Order students by age, then city
SELECT * FROM students ORDER BY age DESC, city ASC;

-- 13. Order students by last_name, then age
SELECT * FROM students ORDER BY last_name ASC, age DESC;

-- 14. Order students with age > 20 by first_name
SELECT * FROM students WHERE age > 20 ORDER BY first_name ASC;

-- 15. Order students with city = 'Paris' by enrollment_date
SELECT * FROM students WHERE city = 'Paris' ORDER BY enrollment_date DESC;

-- 16. Order students with non-null phone by last_name
SELECT * FROM students WHERE phone IS NOT NULL ORDER BY last_name ASC;

-- 17. Order students with email ending in 'gmail.com' by age
SELECT * FROM students WHERE email LIKE '%gmail.com' ORDER BY age DESC;

-- 18. Order students with age between 18 and 25 by city
SELECT * FROM students WHERE age BETWEEN 18 AND 25 ORDER BY city ASC;

-- 19. Order students with city <> 'London' by first_name
SELECT * FROM students WHERE city <> 'London' ORDER BY first_name DESC;

-- 20. Order students with age < 30 by enrollment_date
SELECT * FROM students WHERE age < 30 ORDER BY enrollment_date ASC;

-- 21. Order students with phone IS NULL by last_name
SELECT * FROM students WHERE phone IS NULL ORDER BY last_name DESC;

-- 22. Order students with city IN ('Paris', 'Berlin') by age
SELECT * FROM students WHERE city IN ('Paris', 'Berlin') ORDER BY age ASC;

-- 23. Order students with age >= 21 by city
SELECT * FROM students WHERE age >= 21 ORDER BY city DESC;

-- 24. Order students with email NOT LIKE '%yahoo.com%' by first_name

SELECT * FROM students WHERE email NOT LIKE '%yahoo.com%' ORDER BY first_name ASC;

