-- Subqueries


Select * 
From EmployeeSalary

-- Subquery in select

Select EmployeeID, Salary,
(Select Avg(Salary) from EmployeeSalary) as AllAvgSalary
From EmployeeSalary

-- cant do it in group by/ how to do it in partition by

Select EmployeeID, Salary, Avg(Salary) over () as AllAvgSalary
From EmployeeSalary


Select EmployeeID, Salary, Avg(Salary) as AllAvgSalary
From EmployeeSalary
-- doesnt give the result we want
group by EmployeeID, Salary 
order by 1,2


-- subquery in from 

select sal.EmployeeID, AllAvgSalary
from (Select EmployeeID, Salary, Avg(Salary) over () as AllAvgSalary
      From EmployeeSalary) sal


-- subquery in where 

select EmployeeID, JobTitle, Salary
From EmployeeSalary
where EmployeeID in (
    select EmployeeID
    from EmployeeDemographics
    where age > 30)


























