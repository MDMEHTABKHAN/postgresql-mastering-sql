-- 1. Equal operator
SELECT * FROM students WHERE city = 'New York';

-- 2. Not equal operator
SELECT * FROM students WHERE city <> 'London';

-- 3. Greater than operator
SELECT * FROM students WHERE age > 18;

-- 4. Less than operator
SELECT * FROM students WHERE age < 25;

-- 5. Greater than or equal operator
SELECT * FROM students WHERE age >= 21;

-- 6. Less than or equal operator
SELECT * FROM students WHERE age <= 30;

-- 7. BETWEEN operator
SELECT * FROM students WHERE age BETWEEN 18 AND 25;

-- 8. IN operator
SELECT * FROM students WHERE city IN ('Paris', 'Berlin', 'Rome');

-- 9. NOT IN operator
SELECT * FROM students WHERE city NOT IN ('Paris', 'Berlin', 'Rome');

-- 10. LIKE operator (starts with)
SELECT * FROM students WHERE first_name LIKE 'A%';

-- 11. LIKE operator (ends with)
SELECT * FROM students WHERE last_name LIKE '%son';

-- 12. LIKE operator (contains)
SELECT * FROM students WHERE email LIKE '%gmail.com%';

-- 13. IS NULL operator
SELECT * FROM students WHERE phone IS NULL;

-- 14. IS NOT NULL operator
SELECT * FROM students WHERE phone IS NOT NULL;

-- 15. AND operator
SELECT * FROM students WHERE city = 'London' AND age > 20;

-- 16. OR operator
SELECT * FROM students WHERE city = 'London' OR city = 'Paris';

-- 17. NOT operator
SELECT * FROM students WHERE NOT city = 'London';

-- 18. DISTINCT keyword
SELECT DISTINCT city FROM students;

-- 19. ORDER BY ascending
SELECT * FROM students ORDER BY first_name ASC;

-- 20. ORDER BY descending
SELECT * FROM students ORDER BY age DESC;

-- 21. GROUP BY
SELECT city, COUNT(*) FROM students GROUP BY city;

-- 22. COUNT function
SELECT COUNT(*) FROM students WHERE city = 'Paris';

-- 23. SUM function
SELECT SUM(age) FROM students;

-- 24. AVG function
SELECT AVG(age) FROM students;

-- 25. MIN function
SELECT MIN(age) FROM students;

-- 26. MAX function
SELECT MAX(age) FROM students;

-- 27. Multiple conditions with AND
SELECT * FROM students WHERE age > 18 AND city = 'Berlin';

-- 28. Multiple conditions with OR
SELECT * FROM students WHERE age < 18 OR city = 'Rome';

-- 29. Multiple conditions with NOT
SELECT * FROM students WHERE NOT (age < 18);

-- 30. BETWEEN with dates
SELECT * FROM students WHERE enrollment_date BETWEEN '2023-01-01' AND '2023-12-31';

-- 31. IN with numbers
SELECT * FROM students WHERE age IN (18, 19, 20);

-- 32. LIKE with underscore
SELECT * FROM students WHERE first_name LIKE '_a%';

-- 33. IS NULL with AND
SELECT * FROM students WHERE phone IS NULL AND city = 'Paris';

-- 34. IS NOT NULL with OR
SELECT * FROM students WHERE phone IS NOT NULL OR email IS NOT NULL;

-- 35. NOT LIKE
SELECT * FROM students WHERE email NOT LIKE '%yahoo.com%';

-- 36. NOT BETWEEN
SELECT * FROM students WHERE age NOT BETWEEN 20 AND 30;

-- 37. HAVING clause
SELECT city, COUNT(*) FROM students GROUP BY city HAVING COUNT(*) > 5;

-- 38. LIMIT clause (PostgreSQL uses LIMIT)
SELECT * FROM students LIMIT 10;

-- 39. OFFSET clause
SELECT * FROM students LIMIT 10 OFFSET 5;

-- 40. ORDER BY multiple columns
SELECT * FROM students ORDER BY city ASC, age DESC;

-- 41. Subquery with IN
SELECT * FROM students WHERE city IN (SELECT city FROM cities WHERE country = 'France');

-- 42. EXISTS operator
SELECT * FROM students WHERE EXISTS (SELECT 1 FROM enrollments WHERE enrollments.student_id = students.id);

-- 43. ALL operator
SELECT * FROM students WHERE age > ALL (SELECT age FROM students WHERE city = 'London');

-- 44. ANY operator
SELECT * FROM students WHERE age = ANY (SELECT age FROM students WHERE city = 'Paris');

-- 45. CASE statement
SELECT first_name, age, CASE WHEN age >= 18 THEN 'Adult' ELSE 'Minor' END AS age_group FROM students;

-- 46. COALESCE function
SELECT first_name, COALESCE(phone, 'No Phone') FROM students;

-- 47. NULLIF function
SELECT NULLIF(age, 0) FROM students;

-- 48. CAST function
SELECT CAST(age AS VARCHAR) FROM students;

-- 49. ROUND function
SELECT ROUND(AVG(age), 2) FROM students;

-- 50. LENGTH function
SELECT first_name, LENGTH(first_name) AS name_length FROM students;