/*
Union, Union all
*/

-- combines both tables and removes duplicates

select * 
from EmployeeDemographics
Union
Select *
from WarehouseEmployeeDemographics

-- combines both and includes duplicates

select * 
from EmployeeDemographics
Union all
Select *
from WarehouseEmployeeDemographics
order by EmployeeID


select firstname, EmployeeID, age
from EmployeeDemographics
Union
select EmployeeID, JobTitle, salary
from EmployeeSalary
order by EmployeeID