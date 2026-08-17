USE  RetailSalesDB;
GO

--Stored Procedures
--Display All Customers
USE RetailSalesDB;
GO

CREATE PROCEDURE sp_GetAllCustomers
AS
BEGIN
    SELECT *
    FROM Customers;
END;
GO
EXEC sp_GetAllCustomers;

--Find Orders by Customer ID
CREATE PROCEDURE sp_GetOrdersByCustomer
    @CustomerID INT
AS
BEGIN
    SELECT
        o.OrderID,
        o.OrderDate,
        od.ProductID,
        od.Quantity,
        od.UnitPrice
    FROM Orders o
    JOIN OrderDetails od
        ON o.OrderID = od.OrderID
    WHERE o.CustomerID = @CustomerID;
END;
GO

EXEC sp_GetOrdersByCustomer @CustomerID = 1;