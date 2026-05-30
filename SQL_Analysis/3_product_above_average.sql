-- ================================================
-- Q3: Shows only products that perform above average
-- ================================================
SELECT
Product_Name,
Category,
ROUND(SUM(Sales), 2) AS Total_Revenue
FROM orders
GROUP BY Product_Name, Category
HAVING SUM(Sales) > (
    SELECT AVG(Product_Sales)
    FROM (
        SELECT SUM(Sales) AS Product_Sales
        FROM orders
        GROUP BY Product_Name
    ) AS Avg_Table
)
ORDER BY Total_Revenue DESC;
