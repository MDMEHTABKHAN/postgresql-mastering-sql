-- 1. Categorize age group
SELECT first_name, age,
  CASE
    WHEN age < 13 THEN 'Child'
    WHEN age < 20 THEN 'Teen'
    ELSE 'Adult'
  END AS age_group
FROM students;

-- 2. Pass or fail based on grade
SELECT first_name, grade,
  CASE
    WHEN grade IN ('A', 'B', 'C') THEN 'Pass'
    ELSE 'Fail'
  END AS result
FROM students;

-- 3. Email provider type
SELECT email,
  CASE
    WHEN email LIKE '%gmail.com' THEN 'Gmail'
    WHEN email LIKE '%yahoo.com' THEN 'Yahoo'
    ELSE 'Other'
  END AS provider
FROM students;

-- 4. Age status
SELECT first_name, age,
  CASE
    WHEN age >= 18 THEN 'Adult'
    ELSE 'Minor'
  END AS status
FROM students;

-- 5. Grade description
SELECT grade,
  CASE
    WHEN grade = 'A' THEN 'Excellent'
    WHEN grade = 'B' THEN 'Good'
    WHEN grade = 'C' THEN 'Average'
    WHEN grade = 'D' THEN 'Below Average'
    ELSE 'Poor'
  END AS grade_desc
FROM students;

-- 6. Length of first name category
SELECT first_name,
  CASE
    WHEN LENGTH(first_name) <= 4 THEN 'Short'
    WHEN LENGTH(first_name) <= 7 THEN 'Medium'
    ELSE 'Long'
  END AS name_length
FROM students;

-- 7. Age parity
SELECT first_name, age,
  CASE
    WHEN age % 2 = 0 THEN 'Even'
    ELSE 'Odd'
  END AS age_parity
FROM students;

-- 8. Unique email check
SELECT email,
  CASE
    WHEN email IS NULL THEN 'Missing'
    ELSE 'Present'
  END AS email_status
FROM students;

-- 9. Grade with honors
SELECT first_name, grade,
  CASE
    WHEN grade = 'A' THEN 'Honors'
    ELSE 'Regular'
  END AS honors_status
FROM students;

-- 10. Age milestone
SELECT first_name, age,
  CASE
    WHEN age = 18 THEN 'Just Adult'
    WHEN age = 21 THEN 'Legal Age'
    ELSE 'Other'
  END AS milestone
FROM students;