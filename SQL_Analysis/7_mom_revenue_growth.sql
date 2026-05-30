-- ================================================
-- Q7: Month over Month Revenue Growth Rate
-- ================================================
WITH MONTHLY AS (SELECT
Year_col,
Month_col,
ROUND(SUM(SALES), 2) AS REVENUE
FROM orders
GROUP BY Year_col, Month_col
),
MONTHLY_GROWTH AS (SELECT 
Year_col,
Month_col,
REVENUE,
lag (REVENUE) OVER (PARTITION BY Year_col ORDER BY REVENUE) AS Previous_month_Growth
FROM MONTHLY
)
select
Year_col,
Month_col,
REVENUE,
Previous_month_Growth,
CASE 
WHEN Previous_month_Growth IS NULL THEN 'FIRST_MONTH'
WHEN REVENUE > Previous_month_Growth THEN 'Growth'
WHEN REVENUE < Previous_month_Growth THEN 'decline'
ELSE 'NO CHANGE'
END AS GROWTH_STATUS,
CASE 
WHEN Previous_month_Growth IS NULL THEN 'NULL'
ELSE ROUND(((REVENUE - Previous_month_Growth) / Previous_month_Growth) * 100 , 2) 
END AS Growth_Pct
FROM MONTHLY_GROWTH
order by Year_col, REVENUE DESC;
