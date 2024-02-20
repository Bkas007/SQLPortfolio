/*
Creat Table
*/
--CREATE TABLE EmployeeDemographics
--(EmployeeID int, 
--FirstName varchar(50),
--LastName varchar(50),
--age int,
--Gender varchar(50)
--)

--CREATE TABLE EmployeeSalary
--(EmployeeID int,
--JobTitle varchar(50),
--Salary int)

/*
Insert values into table
*/
--INSERT INTO EmployeeDemographics VALUES
--(1001, 'Bikash', 'Maharjan', 30, 'Male'),
--(1002, 'Ramita', 'Maharjan', 30, 'Female'),
--(1003, 'John', 'Doe', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Michael', 'Scott', 32, 'Male'),
--(1006, 'Kevin', 'Malone', 35, 'Male'),
--(1007, 'Sonia', 'Beasley', 32, 'Female'),
--(1008, 'Cole', 'Brayn', 38, 'Male'),
--(1009, 'Tom', 'Brady', 31, 'Male')

--INSERT INTO EmployeeSalary VALUES
--(1002, 'Nurse Practitioner', 125000),
--(1003, 'Salesman', 45000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 55000),
--(1006, 'Regional Manager', 75000),
--(1007, 'Salesman', 48000),
--(1008, 'Supplier Manager', 41000),
--(1009, 'Accountant', 45000)

/*
Select Statement
*, Top, Distinct, Count, As, Max, Min, Avg
*/

--SELECT * FROM [SQL Tutorial].[dbo].[EmployeeSalary];

/*
Where Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/
--SELECT * 
--FROM EmployeeDemographics
--WHERE FirstName = 'Bikash'
--WHERE FirstName <> 'Bikash'
--WHERE Age <= 32 AND Gender = 'Male'
--WHERE Age <= 32 OR Gender = 'Male'

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName like '%M%'

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName in ('Bikash', 'Ramita', 'Tom')

/*
Group By, Order By
*/

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age DESC

--SELECT Gender, Count(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender

--SELECT *
--FROM EmployeeDemographics
--ORDER BY 4 DESC, 5 DESC

/*
Inner Joins, Full/Left/Right Outer Joins
*/

--SELECT *
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, age, Salary 
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--FROM EmployeeDemographics
--Full Outer JOIN EmployeeSalary
--On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, age, Salary 
--FROM EmployeeDemographics
--Full Outer JOIN EmployeeSalary
--On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--FROM EmployeeDemographics
--Left Outer JOIN EmployeeSalary
--On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, age, Salary 
--FROM EmployeeDemographics
--Left Outer JOIN EmployeeSalary
--On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--FROM EmployeeDemographics
--Right Outer JOIN EmployeeSalary
--On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
--FROM EmployeeDemographics
--Right Outer JOIN EmployeeSalary
--On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
--FROM EmployeeDemographics
--Right Outer JOIN EmployeeSalary
--On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--Where FirstName  <> 'Bikash'
--Order by salary desc

--Select jobtitle, avg(salary)
--from EmployeeDemographics
--inner join EmployeeSalary
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--where jobtitle = 'salesman'
--Group By JobTitle


/*
Union, Union All
*/

--Select *
--from EmployeeDemographics
--full outer join WarehouseEmployeeDemographics
--on EmployeeDemographics.EmployeeID = WarehouseEmployeeDemographics.EmployeeID


--Select *
--from EmployeeDemographics
--Union 
--select * 
--from WarehouseEmployeeDemographics
--order by EmployeeID

--Select *
--from EmployeeDemographics
--Union all
--select * 
--from WarehouseEmployeeDemographics
--order by EmployeeID

-- <Make sure very careful when you use Unions>
--SELECT EmployeeID, FirstName, Age
--FROM EmployeeDemographics
--Union
--SELECT EmployeeID, JobTitle, Salary
--FROM EmployeeSalary
--ORDER BY EmployeeID

/* Case Statement */
--SELECT FirstName, LastName, Age
--FROM EmployeeDemographics
--where Age is not Null
--order by Age

--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age > 30 THEN 'Old'
--	ELSE 'Young'
--End
--FROM EmployeeDemographics
--Where Age is not Null
--order by Age

--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age > 30 THEN 'Old'
--	WHEN Age Between 27 AND 30 THEN 'Young'
--	ELSE 'Baby'
--End
--FROM EmployeeDemographics
--Where Age is not Null
--order by Age

--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age = 38 THEN 'Cole'
--	WHEN Age > 30 THEN 'Old'
--	ELSE 'Baby'
--End
--FROM EmployeeDemographics
--Where Age is not Null
--order by Age

--SELECT *
--FROM EmployeeDemographics
--JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


--SELECT FirstName, LastName, JobTitle, Salary,
--CASE
--	WHEN JobTitle = 'Salesman' Then Salary + (Salary * .10)
--	WHEN JobTitle = 'Accountant' Then Salary + (Salary * .05)
--	WHEN JobTitle = 'HR' Then Salary + (Salary * .000001)
--	ELSE salary + (Salary * .03)
--END AS SalaryAfterRaise
--FROM EmployeeDemographics
--JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*Having Clause*/

--SELECT *
--FROM EmployeeDemographics
--JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT JobTitle, COUNT(JobTitle)
--FROM EmployeeDemographics
--JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle 
--HAVING COUNT(Jobtitle) > 1

--SELECT JobTitle, AVG(Salary)
--FROM EmployeeDemographics
--JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--HAVING AVG(Salary) > 45000
--ORDER BY AVG(Salary)

/* UPdating/Deleting Data */

--SELECT *
--FROM EmployeeDemographics

--UPDATE EmployeeDemographics
--SET EmployeeID = 1012
--WHERE FirstName = 'Holly' AND LastName = 'Flax';

--UPDATE EmployeeDemographics
--SET Age = 31, Gender = 'Female'
--WHERE FirstName = 'Holly' AND LastName = 'Flax';

-- Before run the Delete query make sure run select query to confirm what we are deleting.
--SELECT *
--FROM EmployeeDemographics
--WHERE EmployeeID = 1005

--DELETE FROM EmployeeDemographics
--WHERE EmployeeID = 1005

/* Aliasing */

--SELECT FirstName  Fname
--FROM EmployeeDemographics

--SELECT FirstName + ' ' + LastName AS FullName
--FROM EmployeeDemographics

--SELECT AVG(Age) AS AvgAge
--FROM EmployeeDemographics

--SELECT Demo.EmployeeID, Sal.Salary
--FROM EmployeeDemographics AS Demo
--JOIN EmployeeSalary AS Sal
--ON Demo.EmployeeID = Sal.EmployeeID

--SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age
--FROM EmployeeDemographics  Demo
--LEFT JOIN EmployeeSalary  Sal
--ON Demo.EmployeeID = Sal.EmployeeID
--LEFT JOIN WarehouseEmployeeDemographics Ware
--On Demo.EmployeeID = Ware.EmployeeID

/* Partition By */

--SELECT *
--FROM EmployeeDemographics dem
--JOIN EmployeeSalary sal
--On dem.EmployeeID = sal.EmployeeID

--SELECT FirstName, LastName, Gender, Salary,
--COUNT(Gender) OVER (Partition By Gender) as TotalGender
--FROM EmployeeDemographics dem
--JOIN EmployeeSalary sal
--On dem.EmployeeID = sal.EmployeeID

/* CTEs */

--WITH CTE_Employee as
--(SELECT FirstName, LastName, Gender, Salary,
--COUNT(Gender) OVER (Partition By Gender) as TotalGender,
--AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
--FROM EmployeeDemographics dem
--JOIN EmployeeSalary sal
--On dem.EmployeeID = sal.EmployeeID
--WHERE Salary > '45000'
--)
--Select *
--FROM CTE_Employee

--WITH CTE_Employee as
--(SELECT FirstName, LastName, Gender, Salary,
--COUNT(Gender) OVER (Partition By Gender) as TotalGender,
--AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
--FROM EmployeeDemographics dem
--JOIN EmployeeSalary sal
--On dem.EmployeeID = sal.EmployeeID
--WHERE Salary > '45000'
--)
--Select FirstName, AvgSalary
--FROM CTE_Employee

/* Temp Tables */

--CREATE TABLE #temp_Employee(
--EmployeeID int,
--JobTitle varchar (100),
--Salary int 
--)

--Select *
--From #temp_Employee

--INSERT INTO #temp_Employee VALUES (
--'1001', 'HR', '45000'
--)
 
---- This #Temp table allow you to insert you previous table all together
--INSERT INTO #temp_Employee
--SELECT * 
--FROM EmployeeSalary

--DROP TABLE IF EXISTS #temp_Employee2

--CREATE TABLE #Temp_Employee2(
--JobTitle varchar(50),
--EmployeesPerJob int,
--AvgAge int,
--AvgSalary int
--)

--SELECT * 
--FROM #Temp_Employee2

--INSERT INTO #Temp_Employee2
--SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(Salary)
--From EmployeeDemographics emp
--JOIN EmployeeSalary sal
--ON emp.EmployeeID = sal.EmployeeID
--group by JobTitle

/* String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower */

--Drop Table EmployeeErrors;

--CREATE TABLE EmployeeErrors (
--EmployeeID varchar(50),
--FirstName varchar(50),
--LastName varchar(50)
--)

--Insert into EmployeeErrors Values
--('1001  ', 'Jimbo', 'Halbert'),
--('  1002', 'Pamela', 'Beasley'),
--('1005', 'TOby', 'Flenderson - Fired' )

--Select *
--From EmployeeErrors

---- Using Trim, LTRIM, RTRIM

--SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
--FROM EmployeeErrors;

--SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
--FROM EmployeeErrors;

--SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
--FROM EmployeeErrors;

---- Using Replace

--SELECT LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
--FROM EmployeeErrors;

---- Using Substring

--SELECT SUBSTRING(FirstName, 1, 3)
--FROM EmployeeErrors;

--SELECT SUBSTRING(FirstName, 3, 3)
--FROM EmployeeErrors;

--Select err.FirstName, SUBSTRING(err.Firstname, 1, 3),dem.FirstName, SUBSTRING(dem.FirstName, 1, 3)
--From EmployeeDemographics err
--join EmployeeDemographics dem
--on SUBSTRING(err.FirstName, 1, 3) = SUBSTRING(dem.FirstName, 1, 3)

--Gender
--LastName
--AGE
--DOB


----Using UPPER and lower
--Select FirstName, LOWER(FirstName)
--FROM EmployeeErrors

--Select FirstName, UPPER (FirstName)
--FROM EmployeeErrors


/* Stored Procedures */

--CREATE PROCEDURE TEST
--AS
--Select *
--From EmployeeDemographics

--EXEC TEST

--CREATE PROCEDURE Temp_Employee 
--AS 
--CREATE TABLE #Temp_Employee2(
--JobTitle varchar(100),
--EmployeesPerJob int,
--AvgAge int,
--AvgSalary int
--)

--INSERT INTO #Temp_Employee2
--SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(Salary)
--From EmployeeDemographics emp
--JOIN EmployeeSalary sal
--ON emp.EmployeeID = sal.EmployeeID
--group by JobTitle

--Select * 
--From #temp_employee

--EXEC Temp_Employee @JobTitle = 'Salesman'

/* Subqueries (in the Select, From, and Where Statement) */

--Select * 
--From EmployeeSalary

---- Subquery in Select
--Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) as AllAvgSalary
--From EmployeeSalary


---- How to do it with partition By
--Select EmployeeID, Salary, AVG(Salary) over() as AllAvgSalary
--From EmployeeSalary

---- Why Group By doesn't work
--Select EmployeeID, Salary, AVG(Salary) as AllAvgSalary
--From EmployeeSalary
--Group By EmployeeID, Salary
--Order By 1,2

---- Subquery in From
--Select a.EmployeeID, AllAvgSalary
--From(Select EmployeeID, Salary, AVG(Salary) over() as AllAvgSalary
--	 From EmployeeSalary)a

---- Subquery in Where
--Select EmployeeID, JobTitle, Salary
--From EmployeeSalary
--where EmployeeID in (
--		Select EmployeeID
--		From EmployeeDemographics
--		Where Age > 30)
