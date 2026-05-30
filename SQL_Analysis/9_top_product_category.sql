-- ================================================
-- Q9:Top 3 products per category using RANK window function
-- ================================================
WITH Product_Revenue AS (
SELECT
Category,
Product_Name,
ROUND(SUM(Sales), 2)  AS Total_Revenue,
ROUND(SUM(Profit), 2) AS Total_Profit,
RANK() OVER (PARTITION BY Category ORDER BY SUM(Sales) DESC) AS Revenue_Rank
FROM orders
GROUP BY Category, Product_Name
)
SELECT
Category,
Revenue_Rank,
Product_Name,
Total_Revenue,
Total_Profit
FROM Product_Revenue
WHERE Revenue_Rank <= 3
ORDER BY Category, Revenue_Rank;
GO
