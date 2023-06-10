-- Group by, Order by 

Select * 
From EmployeeDemographics

Select Distinct(Gender)
From EmployeeDemographics

-- puts all the males and females in a row
Select Gender
From EmployeeDemographics
Group By Gender

-- this will illustrate tht point, would have 3 females in a row and 6 males in a row

Select Gender, Count(Gender)
From EmployeeDemographics
Group By Gender

Select Gender, Count(Gender)
From EmployeeDemographics
Where Age > 31
Group By Gender 

--Shows gender and age and the count of each row 
Select Gender, Age, Count(Gender)
From EmployeeDemographics
Group By Gender, Age

--Puts it in Ascending,Descending order
Select Gender, Count(Gender)
From EmployeeDemographics
Where Age > 31
Group By Gender 
Order By Gender Asc

Select * 
From EmployeeDemographics
Order By Age Desc

-- order by rows
Select * 
From EmployeeDemographics
Order By 1, 2, 3, 4


