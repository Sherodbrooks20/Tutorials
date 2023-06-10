--Select Statements
-- *, Top, Distinct, Count, As, Max, Min, Avg

--Selects every column in the table
Select * 
From EmployeeDemographics

--Selects Firstname column from table
Select FirstName
From EmployeeDemographics

--Selects EmployeeID column from table 
Select EmployeeID
From EmployeeSalary

--Selects top 5 rows of table
Select Top 5 *
From EmployeeDemographics

--Gives you the unique values in the column
Select Distinct(EmployeeID)
From EmployeeSalary

Select Distinct(Gender)
From EmployeeDemographics

--Shows you all the non null values in a column
Select COUNT(LastName)
From EmployeeDemographics
-- Gives you 9 because thats how many last names there are

-- Allows you to change the name of a column
Select Firstname as poop
From EmployeeDemographics

Select COUNT(LastName) as LastNameCount
From EmployeeDemographics

-- Gives you the max or min in each column

Select Max(Salary)
From EmployeeSalary

Select Min(Salary)
From EmployeeSalary

--Gives the average

Select Avg(Salary)
From EmployeeSalary


Select *
From SQLTutorial.dbo.EmployeeSalary
