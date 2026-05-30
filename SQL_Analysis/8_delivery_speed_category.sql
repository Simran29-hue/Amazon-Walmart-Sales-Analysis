-- ================================================
-- Q8: How delivery speed affects sales, Delivery Speed Category Analysis
-- ================================================
SELECT 
DELIVERY_SPEED,
COUNT(*) AS TOTAL_ORDERS,
ROUND(SUM(Sales), 2) as Total_Revenue,
Round(sum(Profit), 2) as Total_Profit,
ROUND(AVG(Sales),2) as AVG_ORDER_VALUE
FROM (
SELECT
Sales,
Profit,
Delivery_Days,
CASE 
WHEN Delivery_Days <= 2 THEN '1. EXPRESS (1-2 DAYS)'
WHEN Delivery_Days <= 4 THEN '2. FAST (3-4 DAYS)'
WHEN Delivery_Days <= 7 THEN '3. STANDARD (5-7 DAYS)'
ELSE  '4. SLOW (+8 DAYS)'
END AS DELIVERY_SPEED
FROM orders
) AS DELIVERY_TABLE
GROUP BY DELIVERY_SPEED
ORDER BY DELIVERY_SPEED ;
