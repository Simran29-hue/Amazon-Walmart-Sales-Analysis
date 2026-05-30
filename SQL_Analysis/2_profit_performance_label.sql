-- ================================================
-- Q2: Profit Performance Label,Show Labels every product as Excellent/Good/Poor/Loss
-- ================================================
SELECT
Product_Name,
Category,
ROUND(SUM(Sales), 2) as TOTAL_REVENUE,
ROUND(SUM(Profit), 2) AS TOTAL_PROFIT,
CASE
    WHEN SUM(Profit) > 5000 THEN 'Excellent'
    WHEN SUM(Profit) > 1000 THEN 'Good'
    WHEN SUM(Profit) > 0 THEN 'Poor'
    ELSE  'Loss Making'
END AS performance_label
FROM orders
GROUP BY Product_Name,Category
ORDER BY TOTAL_PROFIT DESC;
