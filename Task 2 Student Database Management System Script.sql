-- Task 2: Student Database Management System

-- 1. Database Setup

-- Creating a Database
create database student_database;
use student_database;

-- Creating a Table 'Student Table' 

CREATE TABLE student_table (
    Student_id INT PRIMARY KEY,
    Stu_name VARCHAR(100),
    Department VARCHAR(100),
    email_id VARCHAR(100),
    Phone_no BIGINT,
    Address VARCHAR(255),
    Date_of_birth DATE,
    Gender VARCHAR(10),
    Major VARCHAR(100),
    GPA DECIMAL(3,2),
    Grade CHAR(1) CHECK (Grade IN ('A','B','C','D','F'))
);

-- 2. Inserting the values in the table 'Student Table'

INSERT INTO student_table VALUES
(1, 'Alia Bhatt', 'Arts', 'alia.bhatt@bolly.in', 9876543210, 'Mumbai', '1993-03-15', 'Female', 'Drama', 8.9, 'A'),
(2, 'Ranbir Kapoor', 'Commerce', 'ranbir.kapoor@bolly.in', 9812345678, 'Mumbai', '1982-09-28', 'Male', 'Marketing', 7.5, 'B'),
(3, 'Kiara Advani', 'Science', 'kiara.advani@bolly.in', 9123456780, 'Mumbai', '1992-07-31', 'Female', 'Biology', 6.2, 'B'),
(4, 'Vicky Kaushal', 'Engineering', 'vicky.kaushal@bolly.in', 9988776655, 'Mumbai', '1988-05-16', 'Male', 'Mechanical', 5.4, 'C'),
(5, 'Janhvi Kapoor', 'Science', 'janhvi.kapoor@bolly.in', 9874501234, 'Mumbai', '1997-03-06', 'Female', 'Physics', 4.1, 'D'),
(6, 'Kartik Aaryan', 'Engineering', 'kartik.aaryan@bolly.in', 9812349876, 'Gwalior', '1990-11-22', 'Male', 'Computer Science', 7.8, 'B'),
(7, 'Tara Sutaria', 'Arts', 'tara.sutaria@bolly.in', 9001122334, 'Mumbai', '1995-11-19', 'Female', 'Music', 9.2, 'A'),
(8, 'Ayushmann Khurrana', 'Science', 'ayushmann.khurrana@bolly.in', 9080706050, 'Chandigarh', '1984-09-14', 'Male', 'Zoology', 4.9, 'D'),
(9, 'Ananya Panday', 'Commerce', 'ananya.panday@bolly.in', 9123001234, 'Mumbai', '1998-10-30', 'Female', 'E-Commerce', 5.7, 'C'),
(10, 'Sidharth Malhotra', 'Engineering', 'sidharth.malhotra@bolly.in', 9873211234, 'Delhi', '1985-01-16', 'Male', 'Electronics', 8.0, 'A');

-- 3. Student Information Retrieval : Retrieve all students sorted by Grade (Descending)

SELECT * FROM student_table
ORDER BY Grade DESC;

-- 4. Query for Male Students: Retrieve all the male students

SELECT * FROM student_table
WHERE Gender = 'Male';

-- 5. Query for student with GPA less than 5.0

SELECT * FROM student_table
WHERE GPA < 5.0;

-- 6. Update student Email and Grade 

UPDATE student_table
SET email_id = 'janhvi.kapoor.new@bolly.in',
    Grade = 'C'
WHERE Student_id = 5;

-- 7. Query for student with the Grade 'B' with name and age

SELECT Stu_name,
       TIMESTAMPDIFF(YEAR, Date_of_birth, CURDATE()) AS Age
FROM student_table
WHERE Grade = 'B';

-- 8. Calculate the average GPA by Department and Gender

SELECT Department, Gender, AVG(GPA) AS Average_GPA
FROM student_table
GROUP BY Department, Gender;

-- 9. Table renaming from 'student_table' to 'student_info'

RENAME TABLE student_table to student_info;

-- 10. Retrieve the student with the highest GPA

SELECT stu_name
FROM student_info
ORDER BY GPA DESC
LIMIT 1;

-- ------------------------ THE END -----------------------------