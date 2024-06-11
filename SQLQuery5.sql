Create Database University
Use University

Create Table College_Table(
College_ID int Primary Key,
College_Name char(250) NOt null,
College_Area varchar(250) Not null);

CREATE TABLE Department_Table (
    Dept_ID INT PRIMARY KEY,
    Dept_Name CHAR(250) NOT NULL,
    Dept_Faculty CHAR(250) NOT NULL,
    College_ID INT,
    FOREIGN KEY (College_ID) REFERENCES College_Table(College_ID)
);


CREATE TABLE Professor_Table (
    Professor_ID INT PRIMARY KEY,
    Professor_Name CHAR(250) NOT NULL,
    Professor_Subject CHAR(250) NOT NULL,
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department_Table(Dept_ID)
);

Create Table Student_Table(
Student_ID int Primary Key,
Student_Name char(250) not null,
Student_Stream char(250) not null);

INSERT INTO College_Table (College_ID, College_Name, College_Area) VALUES
(1, 'Engineering Institute', 'Science Campus'),
(2, 'School of Business', 'Business District'),
(3, 'College of Medicine', 'Medical Campus'),
(4, 'Faculty of Law', 'Law Campus'),
(5, 'School of Arts and Humanities', 'Arts District'),
(6, 'College of Education', 'Education Campus'),
(7, 'Faculty of Social Sciences', 'Social Sciences Campus'),
(8, 'Institute of Technology', 'Technology Campus'),
(9, 'School of Agriculture', 'Agriculture Campus'),
(10, 'College of Architecture', 'Architecture Campus');


INSERT INTO Department_Table (Dept_ID, Dept_Name, Dept_Faculty, College_ID) VALUES
(101, 'Computer Science', 'Computer Lab', 1),
(102, 'Business Administration', 'Conference Room', 2),
(103, 'Anatomy', 'Laboratory', 3),
(104, 'Criminal Law', 'Courtroom', 4),
(105, 'English Literature', 'Library', 5),
(106, 'Elementary Education', 'Classrooms', 6),
(107, 'Psychology', 'Psychology Lab', 7),
(108, 'Information Technology', 'IT Lab', 8),
(109, 'Agricultural Engineering', 'Engineering Lab', 9),
(110, 'Architectural Design', 'Design Studio', 10);

INSERT INTO Professor_Table (Professor_ID, Professor_Name, Professor_Subject, Dept_ID) VALUES
(201, 'Dr. Michael Johnson', 'Data Structures and Algorithms', 101),
(202, 'Dr. Sarah Lee', 'Marketing Management', 102),
(203, 'Prof. James Smith', 'Human Anatomy', 103),
(204, 'Prof. Emily Brown', 'Criminal Law', 104),
(205, 'Dr. David Wilson', 'British Literature', 105),
(206, 'Dr. Sophia Martinez', 'Educational Psychology', 106),
(207, 'Prof. John Davis', 'Cognitive Psychology', 107),
(208, 'Dr. Emma Taylor', 'Database Management Systems', 108),
(209, 'Prof. William Anderson', 'Agricultural Machinery', 109),
(210, 'Dr. Olivia Rodriguez', 'Architectural Theory', 110);

INSERT INTO Student_Table (Student_ID, Student_Name, Student_Stream, Professor_ID) VALUES
(301, 'Alex Johnson', 'Computer Science', 201),
(302, 'Emma Davis', 'Business Administration', 202),
(303, 'James Smith', 'Anatomy', 203),
(304, 'Emily Brown', 'Criminal Law', 204),
(305, 'Sophia Wilson', 'English Literature', 205),
(306, 'Michael Martinez', 'Elementary Education', 206),
(307, 'Olivia Taylor', 'Psychology', 207),
(308, 'William Anderson', 'Information Technology', 208),
(309, 'Isabella Garcia', 'Agricultural Engineering', 209),
(310, 'David Rodriguez', 'Architectural Design', 210);

ALTER TABLE Student_Table
ADD Professor_ID INT,
FOREIGN KEY (Professor_ID) REFERENCES Professor_Table(Professor_ID);

Select * from College_Table
Select * from Department_Table
SElect * from Professor_Table
Select * from Student_Table


Select College_ID, College_Name From College_Table

Select Top 5 * from Student_Table

Select Professor_Name from Professor_Table where Professor_ID=205

Select Upper(Professor_Name) as Upper_Prof_Name from Professor_Table

Select Student_Name from Student_Table where Student_Name like 'A%'

Select College_Name from College_Table where College_Name like '%E'

Alter Table Professor_Table
Add Salary Decimal(10,2)
SElect * from Professor_Table

UPDATE Professor_Table
SET Salary = CASE
    WHEN Professor_ID = 201 THEN 60000.00
    WHEN Professor_ID = 202 THEN 55000.00
    WHEN Professor_ID = 203 THEN 58000.00
    WHEN Professor_ID = 204 THEN 62000.00
    WHEN Professor_ID = 205 THEN 57000.00
    WHEN Professor_ID = 206 THEN 63000.00
    WHEN Professor_ID = 207 THEN 55000.00
    WHEN Professor_ID = 208 THEN 59000.00
    WHEN Professor_ID = 209 THEN 61000.00
    WHEN Professor_ID = 210 THEN 56000.00
    END;

Alter Table Student_Table
Add Contact varchar(20)
Select * from Student_Table

UPDATE Student_Table
SET Contact = CASE
    WHEN Student_ID = 301 THEN '111-222-3331'
    WHEN Student_ID = 302 THEN '444-555-6662'
    WHEN Student_ID = 303 THEN '777-888-9993'
    WHEN Student_ID = 304 THEN '123-456-7894'
    WHEN Student_ID = 305 THEN '987-654-3215'
    WHEN Student_ID = 306 THEN '246-135-7906'
    WHEN Student_ID = 307 THEN '369-258-1477'
    WHEN Student_ID = 308 THEN '852-741-9638'
    WHEN Student_ID = 309 THEN '159-357-2469'
    WHEN Student_ID = 310 THEN '753-951-4680'
    END;

SELECT SUM(Salary) AS Total_Salary FROM Professor_Table;

ALTER TABLE Professor_Table ALTER COLUMN Salary BIGINT;


SELECT * FROM Student_Table
UNION ALL
SELECT * FROM Professor_Table;


SELECT 
    CAST(Student_ID AS VARCHAR) AS ID, 
    Student_Name AS Name, 
    Student_Stream AS Stream, 
    CAST(NULL AS VARCHAR) AS Subject, 
    CAST(NULL AS VARCHAR) AS Dept_ID, 
    CAST(NULL AS DECIMAL(10, 2)) AS Salary
FROM Student_Table

UNION ALL

SELECT 
    CAST(Professor_ID AS VARCHAR) AS ID, 
    Professor_Name AS Name, 
    CAST(NULL AS VARCHAR) AS Stream, 
    Professor_Subject AS Subject, 
    CAST(Dept_ID AS VARCHAR) AS Dept_ID, 
    Salary
FROM Professor_Table;

SELECT *
FROM Student_Table AS S
INNER JOIN Professor_Table AS P ON S.Professor_ID = P.Professor_ID
INNER JOIN Department_Table AS D ON P.Dept_ID = D.Dept_ID
INNER JOIN College_Table AS C ON D.College_ID = C.College_ID;

SELECT *
FROM Department_Table
WHERE Dept_Faculty IS NULL;

SELECT *
FROM Professor_Table
WHERE Professor_Subject IS NULL;

Create View College_Name_Starts_C As
Select * from College_Table
Where College_Name like 'C%'

Select * from College_Name_Starts_C

Create Procedure GetProfessorByID
@ProfessorID int
As
Begin 
Select * from Professor_Table
Where Professor_ID=@ProfessorID
End

Exec GetProfessorByID @ProfessorID= 205

Exec sp_rename 'College_Table','College_Tables_Data'