-- Case Statements



-- creates a new column and says whethere demographic is above or below 30
select firstname, LastName, age
case 
    when age > 30 then 'old'
    else 'young'
end
from EmployeeDemographics
where age is not null
order by age

-- adding more conditions to our case statement
select firstname, LastName, age
case 
    when age > 30 then 'old'
    when age between 27 and 30 then 'young'
    else 'baby'
end
from EmployeeDemographics
where age is not null
order by age

-- doesnt work
select firstname, LastName, age
case 
    when age > 30 then 'old'
    when age = 38 then 'Stanley'
    else 'baby'
end
from EmployeeDemographics
where age is not null
order by age

-- does work for getting stanley to equal 38
select firstname, LastName, age
case 
    when age = 38 then 'Stanley'
    when age > 30 then 'old'
    else 'baby'
end
from EmployeeDemographics
where age is not null
order by age

select firstanme, LastName, JobTitle, salary
case 
    when JobTitle = 'Salesman' then  salary + (salary * .10)
    when JobTitle = 'Accountant' then salary + (salary * .05)
    when JobTitle = 'HR' then salary + (salary * .01)
    else salary + (salary * .03)
end as SalaryAfterRaise
from EmployeeDemographics
join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

