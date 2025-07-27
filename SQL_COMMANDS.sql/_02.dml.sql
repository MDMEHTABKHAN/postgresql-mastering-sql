-- 1. Insert a new student
INSERT INTO students (first_name, last_name, age, city, email, phone, enrollment_date)
VALUES ('John', 'Doe', 22, 'New York', 'john.doe@email.com', '1234567890', '2025-07-27');

-- 2. Update a student's city
UPDATE students SET city = 'Los Angeles' WHERE id = 1;

-- 3. Delete a student by ID
DELETE FROM students WHERE id = 2;

-- 4. Select all students
SELECT * FROM students;

-- 5. Insert multiple students
INSERT INTO students (first_name, last_name, age, city, email, phone, enrollment_date)
VALUES 
('Alice', 'Smith', 20, 'London', 'alice.smith@email.com', '2345678901', '2025-07-27'),
('Bob', 'Brown', 23, 'Paris', 'bob.brown@email.com', '3456789012', '2025-07-27');

-- 6. Update age for all students in Paris
UPDATE students SET age = age + 1 WHERE city = 'Paris';

-- 7. Delete students with age < 18
DELETE FROM students WHERE age < 18;

-- 8. Select students from London
SELECT * FROM students WHERE city = 'London';

-- 9. Insert a student with only required fields
INSERT INTO students (first_name, last_name, age) VALUES ('Eve', 'White', 19);

-- 10. Update email for a specific student
UPDATE students SET email = 'new.email@email.com' WHERE first_name =