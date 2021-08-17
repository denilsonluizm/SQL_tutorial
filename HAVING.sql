--1
SELECT TOP 3 ProductID, SUM(OrderQty) AS 'Quantidade requerida'
FROM Production.WorkOrder
GROUP BY ProductID
HAVING SUM(OrderQty) < 100000
ORDER BY SUM(OrderQty) DESC
--2
SELECT ProductID, COUNT(ProductID) AS 'Ordens de pedido'
FROM Production.WorkOrder
GROUP BY ProductID
HAVING COUNT(ProductID) <= 100
ORDER BY COUNT(ProductID) DESC
--3
SELECT LocationID, COUNT(LocationID) AS 'Quantidade de produtos'
FROM Production.WorkOrderRouting
GROUP BY LocationID
HAVING COUNT(LocationID) BETWEEN 500 AND 1500
--4
SELECT ProductID, COUNT(DISTINCT LocationID) AS 'Quantidade de localização'
FROM Production.WorkOrderRouting
GROUP BY ProductID
HAVING COUNT(DISTINCT LocationID) = 1
