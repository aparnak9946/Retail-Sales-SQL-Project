USE RetailSalesDB;
GO

--Indexes
--Indexes improve query performance by allowing SQL Server to find data more efficiently.

--Create an index on the Customers table

CREATE INDEX IX_Customers_LastName
ON Customers (LastName);
GO

--Create an index on the Orders table
CREATE INDEX IX_Orders_OrderDate
ON Orders (OrderDate);
GO

--Verify the indexes
SELECT
    name AS IndexName,
    OBJECT_NAME(object_id) AS TableName
FROM sys.indexes
WHERE OBJECT_NAME(object_id) IN ('Customers', 'Orders');
