--Where Statement Examples
-- =, <>, <, >, And, Or, Like, Null, Not Null, In, */

-- gives us what it equals
Select * 
From EmployeeDemographics
Where FirstName = 'Jim' 

-- gives us everything not Jim
Select * 
From EmployeeDemographics
Where FirstName <> 'Jim' 

Select * 
From EmployeeDemographics
Where Age > 30

-- gives us either
Select * 
From EmployeeDemographics
Where Age < 30 Or Gender = 'Female'

--gives us both 
Select * 
From EmployeeDemographics
Where Age >= 30 And Gender = 'Male'

-- Selects a last name that starts with an S
Select * 
From EmployeeDemographics
Where LastName Like 'S%'

-- any Lastname with an S in it
Select * 
From EmployeeDemographics
Where LastName Like '%S%'

-- lastname that start with s and has o in it

Select * 
From EmployeeDemographics
Where LastName Like 'S%o%'

--Selects null values

Select * 
From EmployeeDemographics
Where FirstName is Null

--selects not null values

Select * 
From EmployeeDemographics
Where FirstName is Not Null

-- gives us the value we want
Select * 
From EmployeeDemographics
Where FirstName = 'Jim' And FirstName = 'Michael'

-- basically equal but for multiple values
Select * 
From EmployeeDemographics
Where FirstName In('Jim', 'Michael')