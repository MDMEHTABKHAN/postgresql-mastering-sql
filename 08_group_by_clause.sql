-- 1. Count students per grade
SELECT grade, COUNT(*) AS students_count FROM students GROUP BY grade;

-- 2. Average age per grade
SELECT grade, AVG(age) AS average_age FROM students GROUP BY grade;

-- 3. Maximum age per grade
SELECT grade, MAX(age) AS max_age FROM students GROUP BY grade;

-- 4. Minimum age per grade
SELECT grade, MIN(age) AS min_age FROM students GROUP BY grade;

-- 5. Count students per first name
SELECT first_name, COUNT(*) AS count_by_first_name FROM students GROUP BY first_name;

-- 6. Count students per last name
SELECT last_name, COUNT(*) AS count_by_last_name FROM students GROUP BY last_name;

-- 7. Average age per last name
SELECT last_name, AVG(age) AS avg_age_by_last_name FROM students GROUP BY last_name;

-- 8. Count students per age
SELECT age, COUNT(*) AS count_by_age FROM students GROUP BY age;

-- 9. Count students per email domain
SELECT SPLIT_PART(email, '@', 2) AS email_domain, COUNT(*) AS count_by_domain FROM students GROUP BY email_domain;

-- 10. Count students per combination of grade and age
SELECT grade, age, COUNT(*) AS count_by_grade_age FROM students GROUP BY grade, age;


