--1

SELECT Suffix, FirstName
FROM Person.Person
WHERE Suffix = 'Jr.'

--2

SELECT *
FROM Production.Product
WHERE Color = 'Black'

--3

SELECT ProductID, Color, Weight
FROM Production.Product
WHERE Color = 'Black' AND Weight <= 3

--4

SELECT AddressLine1, City
FROM Person.Address
WHERE City = 'Toronto'

--5

SELECT JobTitle, Gender
FROM HumanResources.Employee
WHERE Gender = 'M'

--6

SELECT JobTitle, Gender
FROM HumanResources.Employee
WHERE Gender = 'F'

--7

SELECT JobTitle, HireDate
FROM HumanResources.Employee
WHERE HireDate > '2010/01/01'

--8

SELECT JobTitle, HireDate, Gender
FROM HumanResources.Employee
WHERE HireDate > '2010/01/01' AND Gender = 'M'

--9

