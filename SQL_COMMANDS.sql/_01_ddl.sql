SELECT version();


-- 1. Create table
CREATE TABLE students (
    id GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    enrollment_date DATE
);

-- 2. Create table with constraints
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT CHECK (credits > 0)
);

-- 3. Alter table: add column
ALTER TABLE students ADD COLUMN gender VARCHAR(10);

-- 4. Alter table: drop column
ALTER TABLE students DROP COLUMN gender;

-- 5. Alter table: modify column type
ALTER TABLE students ALTER COLUMN age TYPE SMALLINT;

-- 6. Alter table: rename column
ALTER TABLE students RENAME COLUMN phone TO contact_number;

-- 7. Alter table: add constraint
ALTER TABLE students ADD CONSTRAINT unique_email UNIQUE (email);

-- 8. Alter table: drop constraint
ALTER TABLE students DROP CONSTRAINT unique_email;

-- 9. Rename table
ALTER TABLE students RENAME TO learners;

-- 10. Drop table
DROP TABLE IF EXISTS courses;

-- 11. Create index
CREATE INDEX idx_city ON students(city);

-- 12. Drop index
DROP INDEX IF EXISTS idx_city;

-- 13. Create view
CREATE VIEW student_names AS
SELECT first_name, last_name FROM students;

-- 14. Drop view
DROP VIEW IF EXISTS student_names;

-- 15. Create sequence
CREATE SEQUENCE student_seq START 1 INCREMENT 1;

-- 16. Drop sequence
DROP SEQUENCE IF EXISTS student_seq;

-- 17. Create schema
CREATE SCHEMA school;

-- 18. Drop schema
DROP SCHEMA IF EXISTS school;

-- 19. Truncate table
TRUNCATE TABLE students;

-- 20. Add foreign key
ALTER TABLE students ADD COLUMN course_id INT;
ALTER TABLE students ADD CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(course_id);

-- 21. Drop foreign key
ALTER TABLE students DROP CONSTRAINT fk_course;

-- 22. Set default value
ALTER TABLE students ALTER COLUMN city SET DEFAULT 'Unknown';

-- 23. Drop default value
ALTER TABLE students ALTER COLUMN city DROP DEFAULT;

-- 24. Add primary key (if not exists)
ALTER TABLE courses ADD PRIMARY KEY (course_id);

-- 25. Drop primary key
ALTER TABLE courses DROP