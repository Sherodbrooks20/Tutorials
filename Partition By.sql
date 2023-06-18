-- Partition By

select * 
From EmployeeDemographics

Select * 
From EmployeeSalary

-- allows you basically perform a group by, while maintaining the other rows and columns
Select FirstName, LastName, Gender, Salary
,Count(Gender), Over (Partition By Gender) as Total Gender
From EmployeeDemographics as dem
Join EmployeeSalary as sal 
    on dem.employeeID = sal.employeeID
group by firstanme, LastName, Gender, salary

