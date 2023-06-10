/* 
Inner joins,  full/ left/right outer joins
*/

select *
from EmployeeDemographics

select *
from EmployeeSalary

/* both tables combined, shows everything that is the same/ common in each table */

select *
from EmployeeDemographics
inner join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*
get everything in both tables   
*/
select *
from EmployeeDemographics
full outer join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*
get everything in the left table and the overlapping/common data and nothing in the right table
*/ 
select *
from EmployeeDemographics
left outer join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*
get everything in the right table and the overlapping/common data and nothing in the left table
*/ 

select *
from EmployeeDemographics
right outer join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*
gives us just one employeeID instead of two 
*/

select EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
from EmployeeDemographics
inner join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

select EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
from EmployeeDemographics
inner join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*

*/

select EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
from EmployeeDemographics
right outer join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*
excludes michael from the list and orders it by highest salary
*/

select EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
from EmployeeDemographics
inner join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
where FirstName <> 'Michael'
order by Salary Desc


/*
gives us the avg salary for a salesman 
*/

select JobTitle, AVG(Salary)
from EmployeeDemographics
inner join EmployeeSalary
    on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
where JobTitle = 'Salesman'
group by JobTitle