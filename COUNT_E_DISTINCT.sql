--1
SELECT COUNT(MiddleName)
FROM Person.Person
--2
SELECT COUNT(Title)
FROM Person.Person
--3
SELECT COUNT(Title)
FROM Person.Person
WHERE Title = 'Mr.'
--4
SELECT COUNT(DISTINCT FirstName)
FROM Person.Person
--5
SELECT DISTINCT JobTitle, Gender
FROM HumanResources.Employee
WHERE Gender = 'M'
--6
SELECT DISTINCT JobTitle, Gender
FROM HumanResources.Employee
WHERE Gender = 'F'
--7
SELECT DISTINCT JobTitle
FROM HumanResources.Employee

SELECT COUNT(DISTINCT JobTitle)
FROM HumanResources.Employee
--8
SELECT COUNT(Color)
FROM Production.Product
--9
SELECT COUNT(DISTINCT Color)
FROM Production.Product

SELECT DISTINCT Color
FROM Production.Product
--10
SELECT COUNT(Weight)
FROM Production.Product
WHERE Weight > 10
