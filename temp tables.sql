-- temp tables 


-- creating temp table 
Create Table #temp_Employee (
EmployeeID int, 
JobTitle varchar(100)
Salary int
)

-shows table
Select *
From #temp_Employee

--insert value
Insert into #temp_Employee values(
'1001','HR', '45000'
)

Insert into #temp_Employee
Select *
From EmployeeSalary


-- drop is needed so you can continuously run the temp
drop table if exists #temp_Employee2
Create Table #temp_Employee2 (
JobTitle varchar(50),
AvgSalary int,
AvgAge int,
EmployeesPerJob int,
)

Insert into #temp_Employee2
Select JobTitle, count(JobTitle), Avg(Age), Avg(Salary)
from EmployeeDemographics as emp 
join EmployeeSalary as sal 
    on emp EmployeeID = sal.EmployeeID
group by JobTitle

select *
from #temp_Employee2


