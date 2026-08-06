--  KPI Summary
SELECT 
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS average_order_vales,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percentage
FROM
    superstore_sales;

-- Sales by Category 
SELECT 
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(*) AS total_transaction
FROM
    superstore_sales
GROUP BY category
ORDER BY total_sales DESC;

-- Sales by Region
SELECT 
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM
    superstore_sales
GROUP BY region
ORDER BY total_sales DESC;

-- Top 10 Customers
SELECT 
    customer_name, ROUND(SUM(sales), 2) AS total_sales
FROM
    superstore_sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Sales by Year
SELECT 
    YEAR(order_date) AS order_year,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM
    superstore_sales
GROUP BY YEAR(order_date)
ORDER BY order_year;