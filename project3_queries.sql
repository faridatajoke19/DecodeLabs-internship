-- ============================================
-- Project 3: SQL Data Analysis
-- Aliu Faridat Ajoke — DecodeLabs Tech Internship
-- Written for: SQL Server Management Studio (SSMS)
-- ============================================

-- STEP 1: Create the database
-- Right-click "Databases" in Object Explorer -> New Database -> name it "DecodeLabsOrders"
-- OR run this:
CREATE DATABASE DecodeLabsOrders;
GO

USE DecodeLabsOrders;
GO

-- STEP 2: Create the table matching the dataset columns
CREATE TABLE orders (
    OrderID VARCHAR(20),
    OrderDate DATE,
    CustomerID VARCHAR(20),
    Product VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    ShippingAddress VARCHAR(100),
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    TrackingNumber VARCHAR(50),
    ItemsInCart INT,
    CouponCode VARCHAR(20),
    ReferralSource VARCHAR(50),
    TotalPrice DECIMAL(10,2)
);
GO

-- STEP 3: Import data
-- In Object Explorer: right-click "DecodeLabsOrders" -> Tasks -> Import Flat File...
-- Select orders.csv, map it to the "orders" table, and finish the wizard
-- (Note: the Date column in the CSV may import as 'Date' instead of 'OrderDate' --
--  if so, either rename the column in the wizard, or rename it after import with:
--  EXEC sp_rename 'orders.Date', 'OrderDate', 'COLUMN';)

-- ============================================
-- SECTION A: Basic SELECT queries
-- ============================================

-- A1: View all data
SELECT * FROM orders;

-- A2: View specific columns
SELECT OrderID, Product, Quantity, TotalPrice FROM orders;


-- ============================================
-- SECTION B: WHERE (filtering)
-- ============================================

-- B1: Orders that were Cancelled
SELECT * FROM orders
WHERE OrderStatus = 'Cancelled';

-- B2: Orders with TotalPrice above $2,000
SELECT OrderID, Product, TotalPrice FROM orders
WHERE TotalPrice > 2000;

-- B3: Orders paid with Credit Card AND shipped
SELECT OrderID, PaymentMethod, OrderStatus FROM orders
WHERE PaymentMethod = 'Credit Card' AND OrderStatus = 'Shipped';

-- B4: Orders for a specific product referred by Instagram
SELECT OrderID, Product, ReferralSource FROM orders
WHERE Product = 'Laptop' AND ReferralSource = 'Instagram';


-- ============================================
-- SECTION C: ORDER BY (sorting)
-- ============================================

-- C1: Orders sorted by TotalPrice, highest first
SELECT OrderID, Product, TotalPrice FROM orders
ORDER BY TotalPrice DESC;

-- C2: Orders sorted by Date, oldest first
SELECT OrderID,Date, TotalPrice FROM orders
ORDER BY Date ASC;

-- C3: Top 10 highest-value orders (SQL Server uses TOP, not LIMIT)
SELECT TOP 10 OrderID, Product, TotalPrice FROM orders
ORDER BY TotalPrice DESC;


-- ============================================
-- SECTION D: GROUP BY + Aggregations (COUNT, SUM, AVG)
-- ============================================

-- D1: Count of orders per Product
SELECT Product, COUNT(*) AS OrderCount
FROM orders
GROUP BY Product
ORDER BY OrderCount DESC;

-- D2: Total revenue (SUM) per Product
SELECT Product, SUM(TotalPrice) AS TotalRevenue
FROM orders
GROUP BY Product
ORDER BY TotalRevenue DESC;

-- D3: Average order value (AVG) per Payment Method
SELECT PaymentMethod, AVG(TotalPrice) AS AvgOrderValue
FROM orders
GROUP BY PaymentMethod
ORDER BY AvgOrderValue DESC;

-- D4: Count of orders per Order Status
SELECT OrderStatus, COUNT(*) AS StatusCount
FROM orders
GROUP BY OrderStatus
ORDER BY StatusCount DESC;

-- D5: Total revenue per Referral Source
SELECT ReferralSource, SUM(TotalPrice) AS TotalRevenue, COUNT(*) AS OrderCount
FROM orders
GROUP BY ReferralSource
ORDER BY TotalRevenue DESC;

-- D6: Monthly order volume (SQL Server uses FORMAT, not DATE_FORMAT)
SELECT FORMAT(Date, 'yyyy-MM') AS OrderMonth, COUNT(*) AS OrdersThatMonth
FROM orders
GROUP BY FORMAT(Date, 'yyyy-MM')
ORDER BY OrderMonth ASC;

-- D7: Products with more than 170 orders (GROUP BY + HAVING)
SELECT Product, COUNT(*) AS OrderCount
FROM orders
GROUP BY Product
HAVING COUNT(*) > 170
ORDER BY OrderCount DESC;


-- ============================================
-- SECTION E: Combined queries (WHERE + GROUP BY + ORDER BY together)
-- ============================================

-- E1: Average Total Price per Product, only for Delivered orders
SELECT Product, AVG(TotalPrice) AS AvgDeliveredValue
FROM orders
WHERE OrderStatus = 'Delivered'
GROUP BY Product
ORDER BY AvgDeliveredValue DESC;

-- E2: Revenue per Payment Method, excluding Cancelled orders
SELECT PaymentMethod, SUM(TotalPrice) AS Revenue
FROM orders
WHERE OrderStatus != 'Cancelled'
GROUP BY PaymentMethod
ORDER BY Revenue DESC;