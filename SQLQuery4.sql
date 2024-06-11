Create database students
Use students

Create Table Studentdetails(
studentId int,
name char(250),
surname char(250),
birthdate date,
gender char(200),
class  varchar(250),
point char(100));

INSERT INTO Studentdetails (studentId, name, surname, birthdate, gender, class, point) VALUES
(1, 'John', 'Doe', '2003-05-15', 'Male', '10Math', 'A'),
(2, 'Jane', 'Smith', '2004-08-22', 'Female', '10Sci', 'B'),
(3, 'Michael', 'Johnson', '2003-03-10', 'Male', '9His', 'C'),
(4, 'Emily', 'Brown', '2004-11-30', 'Female', '9Math', 'A'),
(5, 'William', 'Jones', '2003-07-18', 'Male', '10Bio', 'B'),
(6, 'Sophia', 'Davis', '2004-01-05', 'Female', '10Math', 'A'),
(7, 'Emma', 'Miller', '2003-09-12', 'Female', '9Sci', 'C'),
(8, 'Alexander', 'Wilson', '2003-06-25', 'Male', '9Math', 'B'),
(9, 'Olivia', 'Taylor', '2004-04-20', 'Female', '10Bio', 'C'),
(10, 'Daniel', 'Anderson', '2003-02-14', 'Male', '10Sci', 'A'),
(11, 'Isabella', 'Martinez', '2004-10-08', 'Female', '9His', 'B'),
(12, 'Matthew', 'Hernandez', '2003-08-03', 'Male', '10Math', 'A'),
(13, 'Ethan', 'Young', '2004-12-25', 'Male', '9Sci', 'C'),
(14, 'Mia', 'Lopez', '2003-11-17', 'Female', '10Bio', 'B'),
(15, 'Andrew', 'Gonzalez', '2004-07-02', 'Male', '9Math', 'A'),
(16, 'Ava', 'Perez', '2003-03-28', 'Female', '10Math', 'C'),
(17, 'James', 'Rodriguez', '2004-09-19', 'Male', '9His', 'B'),
(18, 'Charlotte', 'Torres', '2003-05-10', 'Female', '10Bio', 'A'),
(19, 'Logan', 'Rivera', '2004-01-15', 'Male', '10Math', 'B'),
(20, 'Chloe', 'Sanchez', '2003-07-07', 'Female', '9Sci', 'C');

Select * from Studentdetails

Select name,surname,class from Studentdetails

Update Studentdetails
set 
gender= case
when gender='Female' then 'F'
when gender= 'Male' then 'M'
Else gender
End

Select * from Studentdetails where gender= 'F'

SELECT DISTINCT class FROM Studentdetails;

Select * from Studentdetails where gender='F' and class='10Math'

Select name,surname,class from Studentdetails where class in ('10Math','10Sci')

Select name, surname, studentId from Studentdetails

Select concat(name, ' ',surname) As 'FullName' from Studentdetails

Select * from Studentdetails where name like 'A%'

SELECT book_name, pages_count FROM book WHERE pages_count BETWEEN 50 AND 200;

Select * from Studentdetails where name in ('Emma','Sophia','Robert')

SELECT * FROM Studentdetails WHERE name LIKE 'A%' OR name LIKE 'D%' OR name LIKE 'K%'

SELECT name, surname, class, gender FROM Studentdetails WHERE (gender = 'M' AND class = '9Math') OR (gender = 'F' AND class = '9His')

SELECT * FROM Studentdetails WHERE gender = 'M' AND (class = '10Math' OR class = '10Bio')

SELECT * FROM Studentdetails WHERE YEAR(birthdate) = 1989;