-- ================================================
-- Q6: States that generate more revenue than average state revenue
-- ================================================
SELECT 
State_Name,
COUNT(*) AS TOTAL_ORDERS,
ROUND(SUM(Sales), 2) AS TOTAL_REVENUE,
ROUND(SUM(Profit), 2) as Total_Profit
FROM orders
GROUP BY State_Name
HAVING SUM(Sales) > (
             SELECT AVG(STATE_Sales) 
             FROM (
                   select SUM(Sales) as STATE_Sales
                   from orders
                   Group by State_Name) as STATE_AVG
                  ) 
ORDER BY TOTAL_REVENUE DESC;
