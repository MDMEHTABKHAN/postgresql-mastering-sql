-- 1. Count total students
SELECT COUNT(*) AS total_students FROM students;

-- 2. Find average age
SELECT AVG(age) AS average_age FROM students;

-- 3. Find maximum age
SELECT MAX(age) AS oldest_student FROM students;

-- 4. Find minimum age
SELECT MIN(age) AS youngest_student FROM students;

-- 5. Count unique grades
SELECT COUNT(DISTINCT grade) AS unique_grades FROM students;

-- 6. Sum of all ages
SELECT SUM(age) AS total_age FROM students;

-- 7. Count students per grade
SELECT grade, COUNT(*) AS students_in_grade FROM students GROUP BY grade;

-- 8. Average age per grade
SELECT grade, AVG(age) AS avg_age FROM students GROUP BY grade;

-- 9. Maximum age per grade
SELECT grade, MAX(age) AS max_age FROM students GROUP BY grade;

-- 10. Minimum age per grade
SELECT grade, MIN(age) AS min_age FROM students GROUP BY grade;