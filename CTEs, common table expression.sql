-- CTEs, common table expression

--Kinda like a subquery 
With CTE_Employee as (Select FirstName, LastName, Gender, Salary
,Count(Gender) over (Partition by Gender) as TotalGender
,Avg(Salary) over (Partition by Gender) as AvgSalary
From EmployeeDemographics as emp
Join EmployeeSalary as sal
    on emp.EmployeeID = sal.EmployeeID
Where Salary > '45000'
)

select *
From CTE_Employee