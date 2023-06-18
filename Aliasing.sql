-- Aliasing

-- Renames the Columns
Select FirstName As Fname 
-- Select FirstName Fname
from EmployeeDemographics

Select FirstName + ' ' + LastName As FullName
From EmployeeDemographics

Select Avg(Age) as AvgAge
From EmployeeDemographics


-- Labels tables so you can specify what data youre using and abbrev tables as well
Select Demo.EmployeeID, Sal.Salary
From EmployeeDemographics As Demo
Join EmployeeSalary As Sal
    on Demo.EmployeeID = Sal.EmployeeID

Select Demo.EmployeeID, Demo.FirstName, Demo.LastName,
Sal.JobTitle, Ware.Age
From EmployeeDemographics As Demo
Left Join EmployeeSalary As Sal
    On Demo.EmployeeID = Sal.EmployeeID
Left Join WarehouseEmployeeDemographics As Ware
    On Demo.EmployeeID = Ware.EmployeeID