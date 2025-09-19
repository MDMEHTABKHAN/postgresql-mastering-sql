-- Students Table
CREATE TABLE Students1 (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    CourseID INT
);

-- Courses Table
CREATE TABLE Courses1 (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Fee DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO Students1 VALUES
(1, 'Ayesha', 20, 101),
(2, 'Rahul', 22, 102),
(3, 'Meena', 21, 103),
(4, 'John', 23, 101),
(5, 'Sara', 22, 104);

INSERT INTO Courses1 VALUES
(101, 'Computer Science', 5000),
(102, 'Information Tech', 4000),
(103, 'AI & ML', 6000),
(105, 'Data Science', 7000);



SELECT s.Name, s.Age, c.CourseName
FROM Students1 s
INNER JOIN Courses1 c
    ON s.CourseID = c.CourseID
WHERE s.Age > 21;


SELECT c.CourseName, COUNT(s.StudentID) AS TotalStudents
FROM Courses1 c
LEFT JOIN Students1 s
    ON c.CourseID = s.CourseID
GROUP BY c.CourseName;


SELECT c.CourseName, s.Name, c.Fee
FROM Students1 s
RIGHT JOIN Courses1 c
    ON s.CourseID = c.CourseID
ORDER BY c.Fee DESC;


SELECT c.CourseName, COUNT(s.StudentID) AS StudentCount
FROM Students1 s
FULL OUTER JOIN Courses1 c
    ON s.CourseID = c.CourseID
GROUP BY c.CourseName;


SELECT COUNT(*) AS TotalStudents FROM Students1;

SELECT SUM(Fee) AS TotalFee FROM Courses1;

SELECT AVG(Age) AS AverageAge FROM Students1;

SELECT MIN(Age) AS Youngest, MAX(Age) AS Oldest FROM Students1;


SELECT CourseID, COUNT(StudentID) AS StudentCount
FROM Students1
GROUP BY CourseID;




SELECT CourseID, COUNT(StudentID) AS StudentCount
FROM Students1
GROUP BY CourseID
HAVING COUNT(StudentID) > 1;



SELECT c.CourseName, AVG(s.Age) AS AvgAge
FROM Students1 s
JOIN Courses1 c
    ON s.CourseID = c.CourseID
GROUP BY c.CourseName
HAVING AVG(s.Age) > 21
ORDER BY AvgAge DESC;


