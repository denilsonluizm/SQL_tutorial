--1
SELECT SalesOrderID, ProductID
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN (51781, 61169, 65558, 69758)
--2
SELECT ProductID, SalesOrderID
FROM Sales.SalesOrderDetail
WHERE ProductID IN (858, 707, 711)
--3
SELECT SalesOrderID, OrderQty, ProductID
FROM Sales.SalesOrderDetail
WHERE OrderQty = 1 AND ProductID IN (708, 709, 773)
--4
SELECT SalesOrderID, OrderQty, ProductID
FROM Sales.SalesOrderDetail
WHERE OrderQty IN (2,3) AND ProductID IN (708, 709, 773)
--5
SELECT LoginID, JobTitle, VacationHours, BirthDate
FROM HumanResources.Employee
WHERE VacationHours IN (30, 60, 90)
ORDER BY BirthDate ASC
--6
SELECT JobTitle, OrganizationLevel, HireDate
FROM HumanResources.Employee
WHERE OrganizationLevel NOT IN (3, 4) AND HireDate BETWEEN '2007/01/01' AND '2007/12/31'