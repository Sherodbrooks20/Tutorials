-- string functions: 
-- trim, Ltrim, Rtrim, Replace, Substring, Upper, Lower


--Drop Table EmployeeErrors;


CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTrim, Rtrim

-- gets rid of blank spaces on both sides
Select EmployeeID, Trim(EmployeeID) as IDTRIM
From EmployeeErrors

-- gets rid of blank spaces on left side
Select EmployeeID, LTrim(EmployeeID) as IDTRIM
From EmployeeErrors

-- self explanatory
Select EmployeeID, RTrim(EmployeeID) as IDTRIM
From EmployeeErrors


--Using replace

-- replaces the first '' with the second '' / the one you want to change it too
Select LastName, Replace(LastName, '-Fired','') as LastNameFixed
From EmployeeErrors


-- Using Substring 

-- takes first 3 
Select Substring(FirstName 1,3)
From EmployeeErrors

-- goes from the third letter on but only 3 letters

Select Substring(FirstName 3,3)
From EmployeeErrors

-- fuzzy matching

Select err.FirstName, dem.FirstName
from EmployeeErrors as err 
join EmployeeDemographics as emp 
    on substring(err.FirstName,1,3) = substring(dem.FirstName,1,3)


Select err.FirstName, substring(err.FirstName,1,3), dem.FirstName, substring(dem.FirstName,1,3)
from EmployeeErrors as err 
join EmployeeDemographics as emp 
    on substring(err.FirstName,1,3) = substring(dem.FirstName,1,3)


-- more than first name to get more accurate info for fuzzy matching such as
-- gender 
-- age
-- DOB
-- Lastname



-- using upper and lower 

-- lower case
select firstname, lower(firstname)
from EmployeeErrors

-- uppercase
select firstname, upper(firstname)
from EmployeeErrors


