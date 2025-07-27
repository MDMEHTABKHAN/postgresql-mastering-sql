-- 1. Grades with more than 5 students
SELECT grade, COUNT(*) AS students_count FROM students GROUP BY grade HAVING COUNT(*) > 5;

-- 2. Grades with average age above 18
SELECT grade, AVG(age) AS average_age FROM students GROUP BY grade HAVING AVG(age) > 18;

-- 3. First names with more than 2 students
SELECT first_name, COUNT(*) AS count_by_first_name FROM students GROUP BY first_name HAVING COUNT(*) > 2;

-- 4. Last names with average age below 20
SELECT last_name, AVG(age) AS avg_age_by_last_name FROM students GROUP BY last_name HAVING AVG(age) < 20;

-- 5. Ages with more than 1 student
SELECT age, COUNT(*) AS count_by_age FROM students GROUP BY age HAVING COUNT(*) > 1;

-- 6. Grades with maximum age above 22
SELECT grade, MAX(age) AS max_age FROM students GROUP BY grade HAVING MAX(age) > 22;

-- 7. Grades with minimum age below 17
SELECT grade, MIN(age) AS min_age FROM students GROUP BY grade HAVING MIN(age) < 17;

-- 8. Email domains with more than 3 students
SELECT SPLIT_PART(email, '@', 2) AS email_domain, COUNT(*) AS count_by_domain FROM students GROUP BY email_domain HAVING COUNT(*) > 3;

-- 9. Grade and age combinations with more than 1 student
SELECT grade, age, COUNT(*) AS count_by_grade_age FROM students GROUP BY grade, age HAVING COUNT(*) > 1;

-- 10. Grades with total age sum above 100
SELECT grade, SUM(age) AS total_age FROM students GROUP BY grade