-- 1. Count students per grade with alias, only grades with more than 5 students
SELECT grade AS student_grade, COUNT(*) AS students_count
FROM students
GROUP BY grade
HAVING COUNT(*) > 5;

-- 2. Average age per grade, only grades with average age above 18
SELECT grade AS student_grade, AVG(age) AS average_age
FROM students
GROUP BY grade
HAVING AVG(age) > 18;

-- 3. Maximum age per grade, only grades with max age above 22
SELECT grade AS student_grade, MAX(age) AS max_age
FROM students
GROUP BY grade
HAVING MAX(age) > 22;

-- 4. Minimum age per grade, only grades with min age below 17
SELECT grade AS student_grade, MIN(age) AS min_age
FROM students
GROUP BY grade
HAVING MIN(age) < 17;

-- 5. Count students per email domain, only domains with more than 3 students
SELECT SPLIT_PART(email, '@', 2) AS email_domain, COUNT(*) AS count_by_domain
FROM students
GROUP BY email_domain
HAVING COUNT(*) > 3;

-- 6. Average age per last name, only last names with average age below 20
SELECT last_name AS surname, AVG(age) AS avg_age_by_last_name
FROM students
GROUP BY last_name
HAVING AVG(age) < 20;

-- 7. Count students per combination of grade and age, only combinations with more than 1 student
SELECT grade AS student_grade, age AS student_age, COUNT(*) AS count_by_grade_age
FROM students
GROUP BY grade, age
HAVING COUNT(*) > 1;

-- 8. Total age per grade, only grades with total age above 100
SELECT grade AS student_grade, SUM(age) AS total_age
FROM students
GROUP BY grade
HAVING SUM(age) > 100;

-- 9. Count students per first name, only first names with more than 2 students
SELECT first_name AS student_name, COUNT(*) AS count_by_first_name
FROM students
GROUP BY first_name
HAVING COUNT(*) > 2;

-- 10. Count unique grades (aggregate + alias)
SELECT COUNT(DISTINCT grade)





-- 1. Count students per grade, only grades with more than 5 students, ordered by count descending, limit 3
SELECT grade AS student_grade, COUNT(*) AS students_count
FROM students
WHERE age > 15
GROUP BY grade
HAVING COUNT(*) > 5
ORDER BY students_count DESC
LIMIT 3;

-- 2. Average age per grade, only grades with average age above 18, ordered by average age, limit 2
SELECT grade AS student_grade, AVG(age) AS average_age
FROM students
WHERE age IS NOT NULL
GROUP BY grade
HAVING AVG(age) > 18
ORDER BY average_age DESC
LIMIT 2;

-- 3. Maximum age per grade, only grades with max age above 22, ordered by max age
SELECT grade AS student_grade, MAX(age) AS max_age
FROM students
WHERE grade <> 'F'
GROUP BY grade
HAVING MAX(age) > 22
ORDER BY max_age DESC
LIMIT 5;

-- 4. Minimum age per grade, only grades with min age below 17, ordered by min age ascending
SELECT grade AS student_grade, MIN(age) AS min_age
FROM students
WHERE age < 20
GROUP BY grade
HAVING MIN(age) < 17
ORDER BY min_age ASC
LIMIT 3;

-- 5. Count students per email domain, only domains with more than 3 students, ordered by count
SELECT SPLIT_PART(email, '@', 2) AS email_domain, COUNT(*) AS count_by_domain
FROM students
WHERE email IS NOT NULL
GROUP BY email_domain
HAVING COUNT(*) > 3
ORDER BY count_by_domain DESC
LIMIT 2;

-- 6. Average age per last name, only last names with average age below 20, ordered by average age
SELECT last_name AS surname, AVG(age) AS avg_age_by_last_name
FROM students
WHERE age > 10
GROUP BY last_name
HAVING AVG(age) < 20
ORDER BY avg_age_by_last_name ASC
LIMIT 4;

-- 7. Count students per combination of grade and age, only combinations with more than 1 student, ordered by count
SELECT grade AS student_grade, age AS student_age, COUNT(*) AS count_by_grade_age
FROM students
WHERE grade IS NOT NULL
GROUP BY grade, age
HAVING COUNT(*) > 1
ORDER BY count_by_grade_age DESC
LIMIT 5;

-- 8. Total age per grade, only grades with total age above 100, ordered by total age
SELECT grade AS student_grade, SUM(age) AS total_age
FROM students
WHERE age > 15
GROUP BY grade
HAVING SUM(age) > 100
ORDER BY total_age DESC
LIMIT 2;

-- 9. Count students per first name, only first names with more than 2 students, ordered by count
SELECT first_name AS student_name, COUNT(*) AS count_by_first_name
FROM students
WHERE first_name IS NOT NULL
GROUP BY first_name
HAVING COUNT(*) > 2
ORDER BY count_by_first_name DESC
LIMIT 3;

-- 10. Count unique grades (aggregate + alias)
SELECT COUNT(DISTINCT grade) AS unique_grades
FROM students;
