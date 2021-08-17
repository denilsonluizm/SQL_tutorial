--1
SELECT Name, CatalogDescription
FROM Production.ProductModel
WHERE CatalogDescription IS NOT NULL

SELECT COUNT(CatalogDescription)
FROM Production.ProductModel
WHERE CatalogDescription IS NOT NULL
--2
SELECT COUNT(*)
FROM Sales.Customer
WHERE PersonID IS NULL AND StoreID IS NULL
--3
SELECT CustomerID, PersonID, StoreID
FROM Sales.Customer
WHERE PersonID IS NOT NULL AND StoreID IS NOT NULL

SELECT COUNT(*)
FROM Sales.Customer
WHERE PersonID IS NOT NULL AND StoreID IS NOT NULL