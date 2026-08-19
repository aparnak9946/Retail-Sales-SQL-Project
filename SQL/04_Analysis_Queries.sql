USE RetailSalesDB;
GO

--First, check complete sales information
SELECT *
FROM OrderDetails;

-- TOTAL REVENUE
SELECT 
SUM(Quantity * UnitPrice) AS TotalRevenue
FROM OrderDetails;

-- COUNT TOATAL ORDERS
SELECT 
COUNT(OrderID) AS TotalOrders
FROM Orders;

-- AVERAGEORDERVALUE
SELECT 
AVG(TotalAmount) AS AverageOrderValue
FROM OrderDetails;

--Category-wise Sales
--Which category generates the most revenue
SELECT 
c.CategoryName,
SUM(od.Quantity * od.UnitPrice) AS Revenue
FROM OrderDetails od
JOIN Products p
ON od.ProductID = p.ProductID
JOIN Categories c
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

-- TOTAL NUMBERS OF ORDERS

SELECT 
COUNT(OrderID) AS TotalOrders
FROM Orders;

-- TOTAL NUMBER OF CUSTOMERS
SELECT 
COUNT(CustomerID) AS TotalCustomers
FROM Customers;

-- TOTAL NUMBER OF PRODUCTS
SELECT
COUNT(ProductID) AS TotalProducts
FROM Products;



--Advanced Sales Analysis Queries.


--Top 10 Best-Selling Products
-- Which products generate the most sales?
SELECT TOP 10
p.ProductName,
SUM(od.Quantity) AS TotalQuantitySold,
SUM(od.Quantity * od.UnitPrice) AS TotalRevenue
FROM OrderDetails od
JOIN Products p
ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalRevenue DESC;

--Category-wise Revenue

--Which category makes the highest revenue?
SELECT
c.CategoryName,
SUM(od.Quantity * od.UnitPrice) AS Revenue
FROM OrderDetails od
JOIN Products p
ON od.ProductID = p.ProductID
JOIN Categories c
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY Revenue DESC;

--Monthly Sales Trend

-- How are sales changing month by month?
SELECT
MONTH(o.OrderDate) AS SalesMonth,
SUM(od.Quantity * od.UnitPrice) AS MonthlyRevenue
FROM Orders o
JOIN OrderDetails od
ON o.OrderID = od.OrderID
GROUP BY MONTH(o.OrderDate)
ORDER BY SalesMonth;

--Customer-wise Spending

-- Who are the highest spending customers?
SELECT
cu.FirstName + ' ' + cu.LastName AS CustomerName,
SUM(od.Quantity * od.UnitPrice) AS TotalSpent
FROM Customers cu
JOIN Orders o
ON cu.CustomerID = o.CustomerID
JOIN OrderDetails od
ON o.OrderID = od.OrderID
GROUP BY cu.FirstName, cu.LastName
ORDER BY TotalSpent DESC;

--Employee Performance

--Which employee generated the highest sales?
SELECT
e.EmployeeName,
SUM(od.Quantity * od.UnitPrice) AS TotalSales
FROM Employees e
JOIN Orders o
ON e.EmployeeID = o.EmployeeID
JOIN OrderDetails od
ON o.OrderID = od.OrderID
GROUP BY e.EmployeeName
ORDER BY TotalSales DESC;



--Window Functions
--ROW_NUMBER()
SELECT
    c.CustomerID,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    SUM(od.Quantity * od.UnitPrice) AS TotalSpent,
    ROW_NUMBER() OVER (
        ORDER BY SUM(od.Quantity * od.UnitPrice) DESC
    ) AS RowNumber
FROM Customers c
JOIN Orders o
    ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
GROUP BY
    c.CustomerID,
    c.FirstName,
    c.LastName;


    --RANK()
    SELECT
    c.CustomerID,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    SUM(od.Quantity * od.UnitPrice) AS TotalSpent,
    RANK() OVER (
        ORDER BY SUM(od.Quantity * od.UnitPrice) DESC
    ) AS CustomerRank
FROM Customers c
JOIN Orders o
    ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
GROUP BY
    c.CustomerID,
    c.FirstName,
    c.LastName;


    --DENSE_RANK()
SELECT
    c.CustomerID,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    SUM(od.Quantity * od.UnitPrice) AS TotalSpent,
    DENSE_RANK() OVER (
        ORDER BY SUM(od.Quantity * od.UnitPrice) DESC
    ) AS DenseRank
FROM Customers c
JOIN Orders o
    ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
GROUP BY
    c.CustomerID,
    c.FirstName,
    c.LastName;



--CTE (COMMON TABLE EXPRESSION)
WITH CustomerSales AS
(
    SELECT
        c.CustomerID,
        c.FirstName + ' ' + c.LastName AS CustomerName,
        SUM(od.Quantity * od.UnitPrice) AS TotalSpent
    FROM Customers c
    JOIN Orders o
        ON c.CustomerID = o.CustomerID
    JOIN OrderDetails od
        ON o.OrderID = od.OrderID
    GROUP BY
        c.CustomerID,
        c.FirstName,
        c.LastName
)
SELECT *
FROM CustomerSales
ORDER BY TotalSpent DESC;
