USE RetailSalesDB;
GO

-- WE insert values in category
INSERT INTO Categories (CategoryID, CategoryName)
VALUES
(1, 'Electronics'),
(2, 'Home Appliances'),
(3, 'Furniture'),
(4, 'Clothing'),
(5, 'Sports');

SELECT * FROM [dbo].[Categories]

-- we insert values in Coustomers
INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, City)
VALUES
(1, 'Aarav', 'Sharma', 'aarav.sharma@email.com', '9876543210', 'Kochi'),
(2, 'Ananya', 'Nair', 'ananya.nair@email.com', '9876543211', 'Calicut'),
(3, 'Rahul', 'Menon', 'rahul.menon@email.com', '9876543212', 'Bangalore'),
(4, 'Priya', 'Krishnan', 'priya.krishnan@email.com', '9876543213', 'Chennai'),
(5, 'Vivek', 'Rao', 'vivek.rao@email.com', '9876543214', 'Hyderabad'),
(6, 'Neha', 'Patel', 'neha.patel@email.com', '9876543215', 'Mumbai'),
(7, 'Arjun', 'Das', 'arjun.das@email.com', '9876543216', 'Kolkata'),
(8, 'Meera', 'Iyer', 'meera.iyer@email.com', '9876543217', 'Pune'),
(9, 'Rohan', 'Verma', 'rohan.verma@email.com', '9876543218', 'Delhi'),
(10, 'Sneha', 'Kapoor', 'sneha.kapoor@email.com', '9876543219', 'Jaipur'),
(11, 'Kiran', 'Joseph', 'kiran.joseph@email.com', '9876543220', 'Kochi'),
(12, 'Divya', 'Pillai', 'divya.pillai@email.com', '9876543221', 'Calicut'),
(13, 'Aditya', 'Singh', 'aditya.singh@email.com', '9876543222', 'Delhi'),
(14, 'Pooja', 'Shah', 'pooja.shah@email.com', '9876543223', 'Ahmedabad'),
(15, 'Manoj', 'Kumar', 'manoj.kumar@email.com', '9876543224', 'Bangalore'),
(16, 'Lakshmi', 'Reddy', 'lakshmi.reddy@email.com', '9876543225', 'Hyderabad'),
(17, 'Sanjay', 'Gupta', 'sanjay.gupta@email.com', '9876543226', 'Mumbai'),
(18, 'Aisha', 'Khan', 'aisha.khan@email.com', '9876543227', 'Lucknow'),
(19, 'Vikram', 'Joshi', 'vikram.joshi@email.com', '9876543228', 'Pune'),
(20, 'Riya', 'Thomas', 'riya.thomas@email.com', '9876543229', 'Kochi');

SELECT * FROM [dbo].[Customers]



-- INSERT EMPLOYEE DATA
INSERT INTO Employees
(EmployeeID, EmployeeName, Department, HireDate)
VALUES
(1, 'Anil Kumar', 'Sales', '2022-01-15'),
(2, 'Priya Nair', 'Sales', '2022-03-20'),
(3, 'Rahul Sharma', 'Sales', '2021-06-10'),
(4, 'Sneha Menon', 'Marketing', '2023-02-05'),
(5, 'Arjun Patel', 'Sales', '2023-05-12'),
(6, 'Meera Iyer', 'Customer Support', '2022-08-18'),
(7, 'Vivek Rao', 'Sales', '2021-11-25'),
(8, 'Divya Kumar', 'Marketing', '2023-09-01'),
(9, 'Kiran Joseph', 'Sales', '2024-01-10'),
(10, 'Asha Verma', 'Customer Support', '2024-04-15');

SELECT * FROM Employees;

--INSERT PRODUCT DATA
INSERT INTO Products
(ProductID, ProductName, CategoryID, UnitPrice)
VALUES
(1, 'Laptop', 1, 75000),
(2, 'Smartphone', 1, 30000),
(3, 'Tablet', 1, 25000),
(4, 'Headphones', 1, 3000),
(5, 'Keyboard', 1, 1500),

(6, 'Refrigerator', 2, 45000),
(7, 'Washing Machine', 2, 35000),
(8, 'Microwave Oven', 2, 12000),
(9, 'Air Conditioner', 2, 50000),
(10, 'Mixer Grinder', 2, 5000),

(11, 'Sofa Set', 3, 60000),
(12, 'Dining Table', 3, 45000),
(13, 'Chair', 3, 8000),
(14, 'Bed', 3, 55000),
(15, 'Wardrobe', 3, 40000),

(16, 'T-Shirt', 4, 800),
(17, 'Jeans', 4, 2000),
(18, 'Jacket', 4, 3500),
(19, 'Shoes', 4, 5000),
(20, 'Watch', 4, 7000),

(21, 'Football', 5, 1200),
(22, 'Cricket Bat', 5, 2500),
(23, 'Tennis Racket', 5, 4000),
(24, 'Gym Bag', 5, 1500),
(25, 'Cycle', 5, 15000),

(26, 'Camera', 1, 55000),
(27, 'Printer', 1, 15000),
(28, 'Vacuum Cleaner', 2, 10000),
(29, 'Bookshelf', 3, 9000),
(30, 'Sports Shoes', 5, 6000);

SELECT* FROM Products;

--INSERT VALUES IN ORDER DATA
INSERT INTO Orders
(OrderID, CustomerID, EmployeeID, OrderDate)
VALUES
(1, 1, 3, '2026-01-05'),
(2, 2, 1, '2026-01-10'),
(3, 3, 5, '2026-01-15'),
(4, 4, 2, '2026-01-20'),
(5, 5, 7, '2026-01-25'),

(6, 6, 3, '2026-02-02'),
(7, 7, 1, '2026-02-08'),
(8, 8, 5, '2026-02-12'),
(9, 9, 2, '2026-02-18'),
(10, 10, 7, '2026-02-25'),

(11, 11, 3, '2026-03-03'),
(12, 12, 1, '2026-03-08'),
(13, 13, 5, '2026-03-14'),
(14, 14, 2, '2026-03-20'),
(15, 15, 7, '2026-03-28'),

(16, 16, 3, '2026-04-05'),
(17, 17, 1, '2026-04-12'),
(18, 18, 5, '2026-04-18'),
(19, 19, 2, '2026-04-22'),
(20, 20, 7, '2026-04-30'),

(21, 1, 9, '2026-05-05'),
(22, 2, 4, '2026-05-10'),
(23, 3, 6, '2026-05-15'),
(24, 4, 8, '2026-05-20'),
(25, 5, 10, '2026-05-25'),

(26, 6, 9, '2026-06-03'),
(27, 7, 4, '2026-06-08'),
(28, 8, 6, '2026-06-15'),
(29, 9, 8, '2026-06-22'),
(30, 10, 10, '2026-06-28'),

(31, 11, 3, '2026-07-05'),
(32, 12, 1, '2026-07-10'),
(33, 13, 5, '2026-07-15'),
(34, 14, 2, '2026-07-20'),
(35, 15, 7, '2026-07-25'),

(36, 16, 9, '2026-08-05'),
(37, 17, 4, '2026-08-12'),
(38, 18, 6, '2026-08-18'),
(39, 19, 8, '2026-08-22'),
(40, 20, 10, '2026-08-30'),

(41, 1, 3, '2026-09-05'),
(42, 5, 1, '2026-09-12'),
(43, 10, 5, '2026-09-18'),
(44, 15, 2, '2026-09-22'),
(45, 20, 7, '2026-09-30'),

(46, 3, 9, '2026-10-10'),
(47, 8, 4, '2026-10-15'),
(48, 13, 6, '2026-10-20'),
(49, 18, 8, '2026-10-25'),
(50, 2, 10, '2026-10-30');

SELECT* FROM Orders;

-- INSER VALUES IN ORDERDETAILES
INSERT INTO OrderDetails
(OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1,1,1,1,75000),
(2,1,4,2,3000),
(3,2,2,1,30000),
(4,2,5,2,1500),
(5,3,6,1,45000),
(6,3,10,2,5000),
(7,4,16,3,800),
(8,4,19,1,5000),
(9,5,11,1,60000),
(10,5,21,2,1200),

(11,6,3,1,25000),
(12,7,7,1,35000),
(13,8,12,1,45000),
(14,9,17,2,2000),
(15,10,22,2,2500),

(16,11,26,1,55000),
(17,12,9,1,50000),
(18,13,14,1,55000),
(19,14,23,2,4000),
(20,15,28,1,10000),

(21,16,30,2,6000),
(22,17,8,1,12000),
(23,18,18,1,3500),
(24,19,13,4,8000),
(25,20,15,1,40000),

(26,21,27,1,15000),
(27,22,20,1,7000),
(28,23,24,3,1500),
(29,24,25,1,15000),
(30,25,29,2,9000),

(31,26,1,1,75000),
(32,27,2,2,30000),
(33,28,6,1,45000),
(34,29,16,5,800),
(35,30,21,3,1200),

(36,31,11,1,60000),
(37,32,4,2,3000),
(38,33,14,1,55000),
(39,34,19,1,5000),
(40,35,22,2,2500),

(41,36,7,1,35000),
(42,37,12,1,45000),
(43,38,17,3,2000),
(44,39,26,1,55000),
(45,40,30,2,6000),

(46,41,3,1,25000),
(47,42,9,1,50000),
(48,43,15,1,40000),
(49,44,23,2,4000),
(50,45,28,1,10000),

(51,46,5,2,1500),
(52,47,18,1,3500),
(53,48,20,1,7000),
(54,49,25,1,15000),
(55,50,27,1,15000);

SELECT* FROM OrderDetails;