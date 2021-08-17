--1
SELECT TOP 3 Name, CountryRegionCode, SalesLastYear
FROM Sales.SalesTerritory
ORDER BY SalesLastYear DESC
--2
SELECT TOP 1 JobTitle, HireDate
FROM HumanResources.Employee
ORDER BY HireDate DESC
--3 
SELECT TOP 1 JobTitle, HireDate, Gender
FROM HumanResources.Employee
WHERE Gender = 'F'
ORDER BY HireDate DESC
--4
SELECT TOP 1 JobTitle, HireDate, Gender
FROM HumanResources.Employee
WHERE Gender = 'M'
ORDER BY HireDate DESC
--5
SELECT TOP 10 NationalIDNumber, JobTitle, BirthDate
FROM HumanResources.Employee
WHERE MaritalStatus = 'M'
ORDER BY BirthDate ASC
--6
SELECT TOP 10 NationalIDNumber, JobTitle, BirthDate, Gender
FROM HumanResources.Employee
WHERE MaritalStatus = 'S' AND Gender = 'F'
ORDER BY BirthDate ASC
--7
SELECT TOP 1 BirthDate, Gender
FROM HumanResources.Employee
ORDER BY BirthDate ASC
--8
SELECT TOP 1 Color, Weight
FROM Production.Product
ORDER BY Weight DESC
--9
SELECT TOP 1 Name, Color, Weight
FROM Production.Product
WHERE Color IS NOT NULL AND Weight IS NOT NULL
ORDER BY Weight ASC