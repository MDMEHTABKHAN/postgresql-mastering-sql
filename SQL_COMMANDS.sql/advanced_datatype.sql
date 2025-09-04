CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,          -- Auto ID
    full_name VARCHAR(100) NOT NULL,        -- Name
    dob DATE,                               -- Date of birth
    email VARCHAR(100) UNIQUE,                    -- Case-insensitive email
    gpa NUMERIC(3,2),                       -- GPA with precision
    skills TEXT[],                          -- Array (multiple skills)
    address JSONB                           -- JSON (structured data)
);


INSERT INTO student(full_name, dob, email, gpa, skills, address)
VALUES('MEHTAB KHAN', '2002-08-07', 'mehtabkhan@gmail.com', 7.89,
ARRAY['HTML', 'CSS', 'Tailwind css', 'JavaScript', 'Python', 'NumPy', 'Pandas', 'MS Excel', 'SQL', 'MySQL', 'Postgresql', 'MS SQL Server'],
'{"street": "123 Main St", "city": "Springfield", "state": "IL", "zip": "62701"}'::jsonb
);


INSERT INTO student(full_name, dob, email, gpa, skills, address)
VALUES('JOHN DOE', '2000-01-01', 'johndoe@example.com', 3.5,
ARRAY['HTML', 'CSS', 'JavaScript'],
'{"street": "456 Elm St", "city": "Metropolis", "state": "NY", "zip": "10001"}'::jsonb
),
(
'JANE SMITH', '1999-05-15', 'janesmith@example.com', 3.8,
ARRAY['HTML', 'CSS', 'JavaScript', 'React'],
'{"street": "789 Oak St", "city": "Gotham", "state": "NJ", "zip": "07001"}'::jsonb
),
(
'ALICE JOHNSON', '2001-03-12', 'alicejohnson@example.com', 3.9,
ARRAY['HTML', 'CSS', 'JavaScript', 'Vue.js'],
'{"street": "321 Pine St", "city": "Star City", "state": "CA", "zip": "90001"}'::jsonb
),
(
'CHARLIE BROWN', '2000-02-29', 'charliebrown@example.com', 3.6,
ARRAY['HTML', 'CSS', 'JavaScript', 'Angular'],
'{"street": "654 Maple St", "city": "Smallville", "state": "KS", "zip": "66101"}'::jsonb
),
(
'DAVID WILSON', '1998-11-30', 'davidwilson@example.com', 3.7,
ARRAY['HTML', 'CSS', 'JavaScript', 'Node.js'],
'{"street": "987 Cedar St", "city": "Metropolis", "state": "NY", "zip": "10001"}'::jsonb
),
(
'EMMA WATSON', '1997-04-15', 'emmawatson@example.com', 4.0,
ARRAY['HTML', 'CSS', 'JavaScript', 'React', 'Node.js'],
'{"street": "159 Willow St", "city": "Gotham", "state": "NJ", "zip": "07001"}'::jsonb
),
(
'FRANK CASTLE', '1996-12-12', 'frankcastle@example.com', 3.5,
ARRAY['HTML', 'CSS', 'JavaScript', 'React', 'Node.js'],
'{"street": "159 Willow St", "city": "Gotham", "state": "NJ", "zip": "07001"}'::jsonb
),
('GRACE HOPPER', '1995-09-09', 'gracehopper@example.com', 4.5,
ARRAY['HTML', 'CSS', 'JavaScript', 'React', 'Node.js'],
'{"street": "321 Birch St", "city": "Star City", "state": "CA", "zip": "90001"}'::jsonb
),
('HELEN KELLER', '1994-06-06', 'helenkeller@example.com', 4.2,
ARRAY['HTML', 'CSS', 'JavaScript', 'React', 'Node.js'],
'{"street": "654 Spruce St", "city": "Smallville", "state": "KS", "zip": "66101"}'::jsonb
),
(
'IVAN IVANOV', '1993-03-03', 'ivanivanov@example.com', 4.0,
ARRAY['HTML', 'CSS', 'JavaScript', 'React', 'Node.js'],
'{"street": "123 Birch St", "city": "Star City", "state": "CA", "zip": "90001"}'::jsonb
),
(
'JACKIE CHAN', '1992-04-07', 'jackiechan@example.com', 4.1,
ARRAY['HTML', 'CSS', 'JavaScript', 'React', 'Node.js'],
'{"street": "987 Willow St", "city": "Gotham", "state": "NJ", "zip": "07001"}'::jsonb
),
(
'KATE BUSH', '1991-05-30', 'katebush@example.com', 4.3,
ARRAY['HTML', 'CSS', 'JavaScript', 'React', 'Node.js'],
'{"street": "159 Birch St", "city": "Star City", "state": "CA", "zip": "90001"}'::jsonb
);


SELECT * FROM student;


SELECT full_name, email, gpa FROM student;
SELECT skills FROM student;

SELECT skills FROM student WHERE full_name = 'MEHTAB KHAN';

SELECT skills FROM student WHERE 'Python' = ANY(skills);

SELECT full_name, skills FROM student WHERE 'Python' = ANY(skills) AND 'HTML' = ANY(skills) AND 'CSS' = ANY(skills);
SELECT full_name, skills FROM student WHERE 'Python' <> ALL (skills) AND 'HTML' = ANY(skills) AND 'CSS' = ANY(skills);
