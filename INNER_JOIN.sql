--1 HumanResources.Employee, HumanResources.EmployeeDepartmentHistory
SELECT he.BusinessEntityID, he.NationalIDNumber, ed.DepartmentID, ed.StartDate, ed.EndDate 
FROM HumanResources.Employee AS he
INNER JOIN HumanResources.EmployeeDepartmentHistory AS ed ON he.BusinessEntityID = ed.BusinessEntityID
WHERE ed.EndDate IS NOT NULL 
--2 HumanResources.Employee, HumanResources.EmployeeDepartmentHistory
SELECT he.BusinessEntityID, he.NationalIDNumber, ed.EndDate
FROM HumanResources.Employee AS he
INNER JOIN HumanResources.EmployeeDepartmentHistory AS ed ON he.BusinessEntityID = ed.BusinessEntityID
WHERE ed.EndDate IS NULL
--3 HumanResources.Employee, HumanResources.EmployeeDepartmentHistory
SELECT TOP 10 ph.NationalIDNumber, he.Rate
FROM HumanResources.Employee AS ph 
INNER JOIN HumanResources.EmployeePayHistory AS he ON ph.BusinessEntityID = he.BusinessEntityID
ORDER BY Rate DESC
--4 HumanResources.EmployeePayHistory, HumanResources.EmployeeDepartmentHistory
SELECT TOP 5 ph.BusinessEntityID, he.Rate, ph.StartDate
FROM HumanResources.EmployeeDepartmentHistory AS ph 
INNER JOIN HumanResources.EmployeePayHistory AS he ON ph.BusinessEntityID = he.BusinessEntityID
WHERE ph.EndDate IS NULL
ORDER BY ph.StartDate ASC
--5 Person.Address, Person.StateProvince
SELECT ps.CountryRegionCode, ps.StateProvinceCode, ps.Name, pa.AddressLine1, pa.City
FROM Person.Address AS pa 
INNER JOIN Person.StateProvince AS ps ON pa.StateProvinceID = ps.StateProvinceID
WHERE ps.CountryRegionCode IN ('US','CA')
--6 Production.Product, Production.ProductInventory
SELECT pp.ProductNumber, pp.Name, pp.Color, py.Shelf
FROM Production.Product AS pp
INNER JOIN Production.ProductInventory as py ON pp.ProductID = py.ProductID
WHERE pp.Color IS NOT NULL AND py.Shelf IN ('D','E','G')
--7 Production.Product, Production.ProductInventory
SELECT pp.Color, SUM(py.Quantity) AS 'Quantidade no inventário'
FROM Production.Product AS pp
INNER JOIN Production.ProductInventory as py ON pp.ProductID = py.ProductID
WHERE pp.Color IS NOT NULL
GROUP BY pp.Color
--8 Production.Product, Production.ProductInventory
SELECT pp.Color, SUM(py.Quantity) AS 'Quantidade no inventário'
FROM Production.Product AS pp
INNER JOIN Production.ProductInventory AS py ON pp.ProductID = py.ProductID
WHERE pp.Color IS NOT NULL
GROUP BY pp.Color
HAVING SUM(py.Quantity) < 1000
--9 Person.Person, Person.EmailAddress
SELECT pp.FirstName, pp.LastName, pe.EmailAddress
FROM Person.Person AS pp
INNER JOIN Person.EmailAddress AS pe ON pp.BusinessEntityID = pe.BusinessEntityID
WHERE pp.FirstName LIKE 'A%'
ORDER BY pp.FirstName ASC
--10 Person.Person, Person.EmailAddress
SELECT pp.FirstName, pp.MiddleName, pp.LastName, pe.EmailAddress
FROM Person.Person AS pp
INNER JOIN Person.EmailAddress AS pe ON pp.BusinessEntityID = pe.BusinessEntityID
WHERE pp.MiddleName IS NOT NULL AND pp.FirstName LIKE '[AEIOU]%'
ORDER BY pp.FirstName ASC