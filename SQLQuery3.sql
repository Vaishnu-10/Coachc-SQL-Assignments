Create Database NewEmp

Use NewEmp

Create Table EmployeeInfo(
EmpId Int Primary key,
EmpFname char(250),
EmpLname char(250),
Department char(200),
Project Varchar(250),
Address char(250),
DOB Date,
Gender char(200));

Create Table EmployeePosition(
EmpId Int Primary Key,
EmpPosition Char(250),
DateOfJoining Date,
Salary int);

Insert into EmployeeInfo(EmpId,EmpFname,EmpLname,Department,Project,Address,DOB,Gender)
Values
(1,'Sanjay','Mehra','HR','P1','Hyderabad(HYD)','1976/12/01','M'),
(2,'Ananya','Mishra','Admin','P2','Delhi(DEL)','1968/05/02','F'),
(3,'Rohan','Diwan','Account','P3','Mumbai(BOM)','1980/01/01','M'),
(4,'Sonia','Kulkarni','HR','P1','Hyderabad(HYD)','1992/05/02','F'),
(5,'Ankit','Kapoor','Admin','P2','Delhi(DEL)','1994/07/03','M');

Insert into EmployeePosition(EmpId,EmpPosition,DateOfJoining,Salary)
Values
(1,'Manager','2022/05/01',500000),
(2,'Executive','2022/05/02',75000),
(3,'Manager','2022/05/01',90000),
(2,'Lead','2022/05/02',85000),
(1,'Executive','2022/05/01',300000);

Select * from EmployeeInfo
Select * from EmployeePosition

Select Upper(EmpFname) as EmpNAme
From EmployeeInfo

Select count(EmpId) as NumberOfEmployees
From EmployeeInfo
Where Department='HR'
SELECT GETDATE() AS CurrentDate;

Select Left(EmpLname,4) As FirstFourChar from EmployeeInfo

Select Left(Address, CHARINDEX('(',Address)-1) As PlaceName From EmployeeInfo

SELECT *
INTO NewEmployeeInfo
FROM EmployeeInfo;

SELECT *
FROM EmployeePosition
WHERE Salary BETWEEN 50000 AND 100000;

Select EmpFname, EmpLname from EmployeeInfo where EmpFname like 'S%'

SELECT TOP 2 *
FROM EmployeeInfo;

SELECT EmpFname + ' ' + EmpLname AS FullName
FROM EmployeeInfo;

SELECT Gender, COUNT(*) AS NumberOfEmployees
FROM EmployeeInfo
GROUP BY Gender;


Select * from EmployeeInfo
SELECT *
FROM EmployeeInfo
ORDER BY EmpLname DESC, Department ASC;


SELECT *
FROM EmployeeInfo
WHERE EmpLname LIKE '____A';

SELECT *
FROM EmployeeInfo
WHERE EmpFname NOT IN ('Sanjay', 'Sonia');

SELECT *
FROM EmployeeInfo
WHERE Address = 'Delhi(DEL)';

SELECT ei.*
FROM EmployeeInfo ei
JOIN EmployeePosition ep ON ei.EmpId = ep.EmpId
WHERE ep.EmpPosition = 'Manager';

SELECT Department, COUNT(*) AS EmployeeCount
FROM EmployeeInfo
GROUP BY Department
ORDER BY EmployeeCount ASC;

SELECT ei.*
FROM EmployeeInfo ei
JOIN EmployeePosition ep ON ei.EmpId = ep.EmpId;

SELECT TOP 2 Salary
FROM (
    SELECT DISTINCT Salary
    FROM EmployeePosition
) AS subquery
ORDER BY Salary ASC;

SELECT TOP 2 Salary
FROM (
    SELECT DISTINCT Salary
    FROM EmployeePosition
) AS subquery
ORDER BY Salary DESC;

With numberedrows as(
Select *, ROW_NUMBER() Over(Order BY EmpId) As RowNum from EmployeeInfo)
Select * from numberedrows
Where RowNum %2=0;

With numberedrows as(
Select *, Row_Number() Over (Order BY EmpId) As RowNum from EmployeeInfo)
Select * from numberedrows
where RowNum%2=1

Select * from EmployeeInfo
Select * from EmployeePosition

Select Salary From (Select salary, ROW_NUMBER() Over(Order BY Salary Desc) As RowNum from EmployeePosition)
As Ranked where RowNum=3

SELECT Salary
FROM (
    SELECT Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS Rank
    FROM EmployeePosition
) AS ranked
WHERE Rank = 4;

SELECT EmpId, EmpFname, EmpLname, Department, Project, Address, DOB, Gender, COUNT(*)
FROM EmployeeInfo
GROUP BY EmpId, EmpFname, EmpLname, Department, Project, Address, DOB, Gender
HAVING COUNT(*) > 1;

SELECT Department, (EmpFname+ ' '+EmpLname) AS Employees
FROM EmployeeInfo
GROUP BY Department
HAVING COUNT(*) > 1;

SELECT *
FROM (
    SELECT *, ROW_NUMBER() OVER (ORDER BY EmpId DESC) AS RowNum
    FROM EmployeeInfo
) AS subquery
WHERE RowNum <= 3
ORDER BY RowNum;

SELECT Salary
FROM (
    SELECT Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS Rank
    FROM EmployeePosition
) AS ranked
WHERE Rank = 3;

SELECT TOP 1 *
FROM EmployeeInfo
ORDER BY EmpId ASC;

SELECT TOP 1 *
FROM EmployeeInfo
ORDER BY EmpId DESC;

Alter Table EmployeeInfo 
Add Constraint email_format Check (Email Like '%_@__%.__%')

SELECT Department
FROM EmployeeInfo
GROUP BY Department
HAVING COUNT(*) < 2;

Select EmpPosition, Sum(salary) as TotalSalaries From EmployeePosition 
Group By EmpPosition

Select * From (Select *, Ntile(2) Over (Order By EmpId) as tile from EmployeeInfo)
As numbered 
where tile = 1


