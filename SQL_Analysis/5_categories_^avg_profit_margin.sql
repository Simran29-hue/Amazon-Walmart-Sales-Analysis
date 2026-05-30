-- ================================================
-- Q5: Top categories, where profit margin is above overall average
-- ================================================
WITH Customer_performance as (
SELECT
Category,
ROUND(SUM(SALES), 2) AS TOTAL_REVENUE,
ROUND(SUM(Profit), 2) AS TOTAL_PROFIT,
ROUND(SUM(SALES)/SUM(Profit)*100, 2) as PROFIT_MARGIN_PCT
FROM orders
GROUP BY Category
),
Overall_Average as (
SELECT 
ROUND(AVG(PROFIT_MARGIN_PCT), 2) AS AVG_MARGIN
FROM Customer_performance
)
Select 
cp.category,
cp.TOTAL_REVENUE,
cp.TOTAL_PROFIT,
cp.PROFIT_MARGIN_PCT,
oa.AVG_MARGIN as Overall_AVG_Margin,
CASE 
WHEN cp.PROFIT_MARGIN_PCT > oa.AVG_MARGIN THEN 'ABOVE_AVERAGE'
ELSE  ' BELOW AVERAGE'
END AS Margin_Status
from Customer_performance as cp
cross join Overall_Average AS oa
order by cp.PROFIT_MARGIN_PCT desc;
