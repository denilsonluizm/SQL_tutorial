--1
SELECT AddressLine1, ModifiedDate
FROM Person.Address
WHERE ModifiedDate BETWEEN '2010/01/01' AND '2012/12/31'
--2
SELECT AddressLine1, AddressLine2, ModifiedDate
FROM Person.Address
WHERE AddressLine2 IS NOT NULL AND ModifiedDate BETWEEN '2010/01/01' AND '2012/12/31'
--3
SELECT COUNT(*)
FROM Person.Address
WHERE AddressLine2 IS NULL AND ModifiedDate BETWEEN '2010/01/01' AND '2012/12/31'
--4
SELECT ProductNumber, ListPrice, Color
FROM Production.Product
WHERE Color IS NOT NULL AND ListPrice BETWEEN 500 AND 1000
--5
SELECT TOP 1 ProductNumber, ListPrice, Color
FROM Production.Product
WHERE Color IS NOT NULL AND ListPrice BETWEEN 500 AND 1000
ORDER BY ListPrice DESC

SELECT TOP 1 ProductNumber, ListPrice, Color
FROM Production.Product
WHERE Color IS NOT NULL AND ListPrice BETWEEN 500 AND 1000
ORDER BY ListPrice ASC
--6
SELECT COUNT(*)
FROM HumanResources.Employee
WHERE BirthDate NOT BETWEEN '1970/01/01' AND '1979/12/31'