--Creates a table with the listed variables as columns and int makes that column accept integer values,
--And varchar makes it accept string values
Create Table EmployeeDemographics
(Employee ID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

Create Table EmployeeSalary
(EmployeeID int,
Jobtitle varchar(50),
Salary int)

--Inserts Values into the employeedemographics table
Insert into EmployeeDemographics values
(1001,'Jim','Halpert',30,'Male')
(1002,'Pam','Beasley',30,'Female')
(1003,'Dwight','Schute',29,'Male')
(1004,'Angela','Martin',31,'Female')
(1005,'Toby','Flenderson',32,'Male')
(1006,'Michael','Scott',35,'Male')
(1007,'Meredith','Palmer',32,'Female')
(1008.'Stanley','Hudson',38,'Male')
(1009,'Kevin','Malone',31,'Male')

-- Inserts values into employeesalary table
insert into EmployeeSalary values
(1001,'Salesman',45000)
(1002,'Receptionist',36000)
(1003,'Salesman',63000)
(1004,'Accountant',47000)
(1005,'HR',50000)
(1006,'Regional Manager',65000)
(1007,'Supplier Relations',41000)
(1008,'Salesman',48000)
(1009,'Accountant',42000)



