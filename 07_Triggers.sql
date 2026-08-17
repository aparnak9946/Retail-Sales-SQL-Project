USE RetailSalesDB;
GO

--Triggers
--A Trigger is a special type of stored procedure that automatically executes whenan INSERT, UPDATE, or DELETE operation occurs.


--Create an Audit Table

--This table will store information whenever a new customer is added.
USE RetailSalesDB;
GO

CREATE TABLE CustomerAudit
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT,
    CustomerName NVARCHAR(100),
    ActionPerformed NVARCHAR(50),
    ActionDate DATETIME DEFAULT GETDATE()
);
GO

--Create the Trigger
CREATE TRIGGER trg_AfterCustomerInsert
ON Customers
AFTER INSERT
AS
BEGIN
    INSERT INTO CustomerAudit
    (
        CustomerID,
        CustomerName,
        ActionPerformed
    )
    SELECT
        CustomerID,
        FirstName + ' ' + LastName,
        'INSERT'
    FROM inserted;
END;
GO

--Test the Trigger
--Insert a new customer
INSERT INTO Customers
(
    CustomerID,
    FirstName,
    LastName,
    Email,
    Phone
)
VALUES
(
    21,
    'Riya',
    'Sharma',
    'riya@gmail.com',
    '9876543210'
);

SELECT*
FROM Customers;

UPDATE Customers
SET City = 'Kochi'
WHERE CustomerID = 21;

--Check the Audit Table
SELECT *
FROM CustomerAudit;
