USE RetailSalesDB;
GO
USE RetailSalesDB;
GO
-- VIEW


CREATE VIEW vw_CustomerSalesSummary AS
SELECT
    c.CustomerID,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    COUNT(DISTINCT o.OrderID) AS TotalOrders,
    SUM(od.Quantity * od.UnitPrice) AS TotalSpent
FROM Customers c
JOIN Orders o
    ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
GROUP BY
    c.CustomerID,
    c.FirstName,
    c.LastName;

    --TEST THE VIEW
SELECT *
FROM vw_CustomerSalesSummary;
