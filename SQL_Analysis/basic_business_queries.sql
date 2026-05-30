-- ================================================
-- Q2: Which category makes most revenue & profit?
-- ================================================
SELECT
    Category,
    COUNT(*)                            AS Total_Orders,
    ROUND(SUM(Sales), 2)                AS Total_Revenue,
    ROUND(SUM(Profit), 2)               AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100,2) AS Profit_Margin_Pct
FROM orders
GROUP BY Category
ORDER BY Total_Revenue DESC;
GO

-- ================================================
-- Q3: Top 10 best selling products
-- ================================================
SELECT TOP 10
Product_Name,
Category,
count (*) AS TOTAL_ORDERS,
ROUND(SUM(Sales),2) AS TOTAL_REVENUE,
ROUND(SUM(Profit),2) as TOTAL_PROFIT
FROM orders
GROUP BY Product_Name, Category
ORDER BY TOTAL_REVENUE DESC;

-- ================================================
-- Q4: Top 5 loss making products
-- ================================================
SELECT TOP 5
Product_Name,
Category,
count (*) AS TOTAL_ORDERS,
ROUND(SUM(Sales),2) AS TOTAL_REVENUE,
ROUND(SUM(Profit),2) as TOTAL_PROFIT
FROM orders
GROUP BY Product_Name, Category
order by TOTAL_PROFIT


-- ================================================
-- Q5: Monthly revenue trend
-- ================================================
SELECT 
Year_col as YEARLY_ORDER,
Month_col AS MONTHLY_ORDER,
ROUND(SUM(Sales), 2) AS MONTHLY_REVENUE,
ROUND(SUM(Profit), 2) as MONTHLY_profit,
COUNT(*) AS TOTAL_ORDERS
FROM orders
GROUP BY Year_col, Month_col
ORDER BY Year_col, MONTHLY_REVENUE DESC

-- ================================================
-- Q6: Top 10 states by revenue
-- ================================================
SELECT TOP 10
State_Name,
COUNT(*) AS TOTAL_ORDERS,
ROUND(SUM(Sales), 2) as TOTAL_REVENUE,
ROUND(SUM(Profit), 2) AS TOTAL_Profit
FROM orders
GROUP BY State_Name
order by TOTAL_REVENUE DESC

-- ================================================
-- Q7: Does discount hurt profit?
-- ================================================
SELECT
    Order_Size              AS Order_Category,
    COUNT(*)                AS Total_Orders,
    ROUND(AVG(Sales), 2)    AS Avg_Sale_Value,
    ROUND(SUM(Profit), 2)   AS Total_Profit,
    ROUND(AVG(Profit), 2)   AS Avg_Profit
FROM orders
GROUP BY Order_Size
ORDER BY Avg_Sale_Value DESC;
GO

-- ================================================
-- Q8: Delivery performance by category
-- ================================================
SELECT 
Category,
ROUND(AVG(CAST(Delivery_days as FLOAT)), 1) AS AVG_DELIVERY_DAYS,
MIN(Delivery_days) as FASTEST_DELIVERY,
MAX(Delivery_days) AS SLOWEST_DELIVERY,
COUNT(*) TOTAL_ORDERS
FROM orders
GROUP BY Category
ORDER BY AVG_DELIVERY_DAYS DESC;

-- ================================================
-- Q9: Top 10 customers by revenue
-- ================================================
SELECT TOP 10
EmailID AS CUSTOMERS,
COUNT(*) AS TOTAL_ORDERS,
ROUND(SUM(Sales), 2) AS TOTAL_SPENT,
ROUND(SUM(Profit), 2) AS PROFIT_GENERATED
FROM orders
GROUP BY EmailID
ORDER BY TOTAL_SPENT DESC;
