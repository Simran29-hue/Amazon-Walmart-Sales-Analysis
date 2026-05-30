-- ================================================
-- Q4: Customer Value Segmentation, Groups customers into High, Medium, Low value
-- ================================================
select 
Customer_segment,
COUNT(*) TOTAL_CUSTOMER,
ROUND(SUM(Total_spent), 2) AS SEGEMENT_VALUE,
ROUND(AVG(Total_spent), 2) AS AVG_SPENT
FROM(
select 
EmailID,
Round(SUM(Sales),2) as Total_spent,
CASE
WHEN Round(SUM(Sales),2) > 5000 then 'High  Value'
WHEN Round(SUM(Sales),2) > 2000 then 'Medium  Value'
ELSE 'Low Value'
END AS Customer_segment
FROM orders
Group By EmailID
) AS CUSTOMER_TABLE
GROUP BY Customer_segment
ORDER BY SEGEMENT_VALUE DESC;
