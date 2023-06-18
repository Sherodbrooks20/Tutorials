-- Stored Procedures and Use cases


-- creates a stored procedure
create procedure test
as 
Select * 
from EmployeeDemographics

-- executes 
Exec test


Create Procedure temp_Employee
as 
Create TABLE #temp_Employee(
JobTitle varchar(100),
AvgSalary int,
AvgAge int,
EmployeesPerJob int,
)

Insert into #temp_Employee
Select JobTitle, count(JobTitle), Avg(Age), Avg(Salary)
from EmployeeDemographics as emp 
join EmployeeSalary as sal 
    on emp EmployeeID = sal.EmployeeID
group by JobTitle

select * 
from #temp_Employee


Exec temp_Employee