-- Having Clause


-- tells us how many people have each jobtitle
select JobTitle, Count(JobTitle)
from EmployeeDemographics
join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
group by JobTitle

-- error 
select JobTitle, Count(JobTitle)
from EmployeeDemographics
join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where Count(JobTitle) > 1
group by JobTitle

-- error
select JobTitle, Count(JobTitle)
from EmployeeDemographics
join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Having Count(JobTitle) > 1
group by JobTitle


-- has to be afer group by  
select JobTitle, Count(JobTitle)
from EmployeeDemographics
join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
group by JobTitle
Having Count(JobTitle) > 1


--error
select JobTitle, Avg(Salary)
from EmployeeDemographics
join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
group by JobTitle
order by Avg(Salary)
Having Avg(Salary) > 45000

-- has to go before the order by
select JobTitle, Avg(Salary)
from EmployeeDemographics
join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
group by JobTitle
Having Avg(Salary) > 45000
order by Avg(Salary)

