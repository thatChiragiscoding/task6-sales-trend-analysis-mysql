# Sales Trend Analysis Using MySQL

This repository contains SQL scripts and instructions to perform sales trend analysis by aggregating monthly revenue and order volume from an online sales dataset.

## Features
- Aggregate total revenue and order counts by year and month.
- Filter data for specific date ranges.
- Export query results to CSV for further analysis.
- Compatible with MySQL and executable via MySQL Workbench or command line.


## Sample Query

```sql
SELECT 
  YEAR(order_date) AS order_year,
  EXTRACT(MONTH FROM order_date) AS order_month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
WHERE order_date BETWEEN '2024-01-01' AND '2024-06-30'
GROUP BY YEAR(order_date), EXTRACT(MONTH FROM order_date)
ORDER BY order_year, order_month;
