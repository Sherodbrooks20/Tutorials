-- Updating and deleting data

select *
from EmployeeDemographics


-- ADDS INFORMATION INTO THE TABLE
Update EmployeeDemographics
Set EmployeeID = 1012
Where FirstName = 'Holly' And LastName = 'Flax'

Update EmployeeDemographics
Set Age = 31, Gender = 'Female'
Where FirstName = 'Holly' And LastName = 'Flax'

-- be careful when you delete, deletes the row
Delete from EmployeeDemographics
where EmployeeID = 1005

-- use this before you delete so you know what youyre deleting
Select *
From EmployeeDemographics
where employeeID = 1004