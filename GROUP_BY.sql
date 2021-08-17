--1
SELECT TerritoryID, SUM(SalesQuota) AS 'Quota de venda'
FROM Sales.SalesPerson
WHERE TerritoryID IS NOT NULL
GROUP BY TerritoryID
ORDER BY SUM(SalesQuota) DESC
--2
SELECT TOP 3 TerritoryID, SUM(SalesLastYear) AS 'Venda total ultimo ano'
FROM Sales.SalesPerson
WHERE TerritoryID IS NOT NULL
GROUP BY TerritoryID
ORDER BY SUM(SalesLastYear) ASC
--3
SELECT Color, COUNT(Color) AS 'Quantidade de produtos', AVG(ListPrice) AS 'Média de preço', MIN(StandardCost) AS 'Menor preço de custo'
FROM Production.Product
WHERE ListPrice <> 0.0000 AND Color IS NOT NULL AND StandardCost <> 0.0000
GROUP BY Color 
ORDER BY COUNT(Color) DESC
--4
SELECT Size, COUNT(Size) AS 'Quantidade de produtos'
FROM Production.Product
WHERE Size IS NOT NULL
GROUP BY Size
ORDER BY COUNT(Size) DESC