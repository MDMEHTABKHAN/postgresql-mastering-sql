CREATE DATABASE school;

CREATE DATABASE school_test;

DROP DATABASE IF EXISTS school_test;

DROP DATABASE school

CREATE TABLE students (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INT NOT NULL,
    grade VARCHAR(10) NOT NULL
);  

INSERT INTO students (first_name, last_name, email, age, grade) VALUES
('Aarav', 'Sharma', 'aarav.sharma@example.com', 18, 'A'),
('Vivaan', 'Verma', 'vivaan.verma@example.com', 17, 'B'),
('Aditya', 'Mehta', 'aditya.mehta@example.com', 19, 'A'),
('Krishna', 'Yadav', 'krishna.yadav@example.com', 20, 'B'),
('Saanvi', 'Iyer', 'saanvi.iyer@example.com', 18, 'A'),
('Ishaan', 'Patel', 'ishaan.patel@example.com', 17, 'C'),
('Diya', 'Rao', 'diya.rao@example.com', 19, 'B'),
('Aryan', 'Reddy', 'aryan.reddy@example.com', 18, 'A'),
('Anaya', 'Nair', 'anaya.nair@example.com', 17, 'B'),
('Kabir', 'Jat', 'kabir.jat@example.com', 20, 'C'),

('Neha', 'Kurmi', 'neha.kurmi@example.com', 18, 'B'),
('Rohan', 'Gujjar', 'rohan.gujjar@example.com', 17, 'C'),
('Aanya', 'Vishwakarma', 'aanya.vishwakarma@example.com', 19, 'A'),
('Ritik', 'Paswan', 'ritik.paswan@example.com', 20, 'B'),
('Priya', 'Das', 'priya.das@example.com', 18, 'A'),
('Tanvi', 'Teli', 'tanvi.teli@example.com', 17, 'C'),
('Harsh', 'Sahu', 'harsh.sahu@example.com', 18, 'B'),
('Sneha', 'Majhi', 'sneha.majhi@example.com', 19, 'A'),
('Karan', 'Bhil', 'karan.bhil@example.com', 20, 'C'),
('Riya', 'Bhoi', 'riya.bhoi@example.com', 18, 'B'),

('Amit', 'Naik', 'amit.naik@example.com', 19, 'B'),
('Pooja', 'Mishra', 'pooja.mishra@example.com', 17, 'A'),
('Sourav', 'Khan', 'sourav.khan@example.com', 20, 'C'),
('Meena', 'Sheikh', 'meena.sheikh@example.com', 18, 'A'),
('Dev', 'Choudhary', 'dev.choudhary@example.com', 17, 'B'),
('Nikita', 'Bharti', 'nikita.bharti@example.com', 19, 'C'),
('Raj', 'Rathod', 'raj.rathod@example.com', 18, 'B'),
('Simran', 'Bora', 'simran.bora@example.com', 20, 'A'),
('Ankit', 'Ahir', 'ankit.ahir@example.com', 19, 'B'),
('Nidhi', 'More', 'nidhi.more@example.com', 17, 'C'),

('Gaurav', 'Solanki', 'gaurav.solanki@example.com', 20, 'B'),
('Divya', 'Goswami', 'divya.goswami@example.com', 18, 'A'),
('Vikas', 'Sutar', 'vikas.sutar@example.com', 17, 'C'),
('Shreya', 'Chamar', 'shreya.chamar@example.com', 19, 'B'),
('Nilesh', 'Banjara', 'nilesh.banjara@example.com', 20, 'A'),
('Pankaj', 'Kalal', 'pankaj.kalal@example.com', 18, 'C'),
('Bhavana', 'Bhoi', 'bhavana.bhoi@example.com', 17, 'B'),
('Ajay', 'Lodha', 'ajay.lodha@example.com', 19, 'A'),
('Mansi', 'Choudhury', 'mansi.choudhury@example.com', 18, 'B'),
('Deepak', 'Gavali', 'deepak.gavali@example.com', 17, 'C'),

('Rashmi', 'Sonar', 'rashmi.sonar@example.com', 20, 'A'),
('Yash', 'Rawat', 'yash.rawat@example.com', 18, 'B'),
('Aishwarya', 'Mali', 'aishwarya.mali@example.com', 17, 'C'),
('Rahul', 'Bhamre', 'rahul.bhamre@example.com', 19, 'A'),
('Preeti', 'Lohar', 'preeti.lohar@example.com', 20, 'B'),
('Jay', 'Dhakad', 'jay.dhakad@example.com', 18, 'C'),
('Muskan', 'Bhatt', 'muskan.bhatt@example.com', 17, 'A'),
('Siddharth', 'Saini', 'siddharth.saini@example.com', 19, 'B'),
('Komal', 'Kamble', 'komal.kamble@example.com', 18, 'C'),
('Raghav', 'Pandit', 'raghav.pandit@example.com', 17, 'A');


