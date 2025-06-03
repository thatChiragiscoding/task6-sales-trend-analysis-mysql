-- Step 1: Create table
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

-- Step 2: Insert sample data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1001, '2024-01-05', 1200.00, 201),
(1002, '2024-01-15', 1300.00, 202),
(1003, '2024-02-03', 2100.00, 203),
(1004, '2024-02-20', 2400.00, 204),
(1005, '2024-03-10', 2200.00, 205),
(1006, '2024-03-15', 2300.00, 206),
(1007, '2024-03-25', 2200.00, 207),
(1008, '2024-04-01', 3100.00, 208),
(1009, '2024-04-20', 3000.00, 209),
(1010, '2024-05-10', 1800.00, 210),
(1011, '2024-05-30', 1900.00, 211),
(1012, '2024-06-15', 2200.00, 212),
(1013, '2024-06-25', 2100.00, 213);

-- Step 3: Monthly revenue and order volume query
SELECT
    YEAR(order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    online_sales
WHERE
    order_date BETWEEN '2024-01-01' AND '2024-06-30'
GROUP BY
    YEAR(order_date), EXTRACT(MONTH FROM order_date)
ORDER BY
    order_year, order_month;
