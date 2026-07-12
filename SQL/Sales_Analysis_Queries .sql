SELECT *
FROM Superstore;
SELECT SUM(Sales) AS Total_Sales
FROM Superstore;
-- ===========================
-- KPI ANALYSIS
-- ===========================

-- Total Sales
SELECT
SUM(Sales) AS Total_Sales
FROM Superstore;

-- Total Orders
SELECT
COUNT(DISTINCT "Order ID") AS Total_Orders
FROM Superstore;

-- Total Customers
SELECT
COUNT(DISTINCT "Customer ID") AS Total_Customers
FROM Superstore;

-- Average Sales per Order
SELECT
SUM(Sales) /
COUNT(DISTINCT "Order ID") AS Average_Sales_Per_Order
FROM Superstore;

-- ===========================
-- SALES BY REGION
-- ===========================

SELECT
Region,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- ===========================
-- SALES BY CATEGORY
-- ===========================

SELECT
Category,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- ===========================
-- SALES BY YEAR
-- ===========================

SELECT
strftime('%Y',"Order Date") AS Year,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Year
ORDER BY Year;

SELECT "Order Date"
FROM Superstore
LIMIT 10;

PRAGMA table_info(Superstore);

SELECT "Order Date"
FROM Superstore
WHERE "Order Date" LIKE '%/2018'
LIMIT 20;

SELECT
substr("Order Date", 7, 4) AS Year,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY substr("Order Date", 7, 4)
ORDER BY Year;

-- ===========================
-- TOP 10 CUSTOMERS
-- ===========================

SELECT
"Customer Name",
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY "Customer Name"
ORDER BY Total_Sales DESC
LIMIT 10;

-- ===========================
-- TOP 10 PRODUCTS
-- ===========================

SELECT
"Product Name",
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 10;