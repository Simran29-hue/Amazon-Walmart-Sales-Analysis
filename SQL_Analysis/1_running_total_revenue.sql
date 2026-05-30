-- ================================================
-- Q1: Running Total of Revenue, Show cumulative revenue month by month
-- ================================================
WITH MONTHLY_REVENUE AS (
SELECT 
Year_col, 
Month_col, 
ROUND(SUM(Sales), 2) AS MONTHLY_REVENUE,
ROUND(SUM(Profit), 2) as MONTHLY_profit,
COUNT(*) AS TOTAL_ORDERS
FROM orders
GROUP BY Year_col, Month_col
)
SELECT 
Year_col, 
Month_col,
MONTHLY_REVENUE,
MONTHLY_profit,
ROUND(SUM(MONTHLY_REVENUE)OVER (PARTITION BY Year_col ORDER BY MONTHLY_REVENUE DESC), 2) AS RUNNING_TOTAL_REVENUE
FROM MONTHLY_REVENUE
ORDER BY Year_col, MONTHLY_REVENUE DESC;
