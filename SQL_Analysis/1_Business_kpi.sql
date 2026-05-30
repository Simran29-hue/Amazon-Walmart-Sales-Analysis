-- ================================================
-- Q1: What is the total revenue, profit and orders? (Overall Business KPIs)
-- ================================================

-- CALCULATE THE TOTAL ORDERS (BUSINESS KPIs)
SELECT
    COUNT(*)                            
    AS Total_Orders
From orders

-- CALCULATE THE TOTAL REVENUE (BUSINESS KPIs)
SELECT
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Revenue
FROM orders;

-- CALCULATE THE TOTAL PROFIT (BUSINESS KPIs)
SELECT
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM orders;

-- CALCULATE THE Avg_Order_Value (BUSINESS KPIs)
SELECT
    COUNT(*) AS Total_Orders,
    ROUND(AVG(Sales), 2) AS Avg_Order_Value
FROM orders;

-- CALCULATE THE Profit_Margin_Pct (BUSINESS KPIs)
SELECT
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Profit)/SUM(Sales)*100,2) AS Profit_Margin_Pct
FROM orders;

-- Can Calculate in One go 
SELECT
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Sales), 2) AS Avg_Order_Value,
    ROUND(SUM(Profit)/SUM(Sales)*100,2) AS Profit_Margin_Pct
FROM orders;
GO
