-- Top 5 Customers by Sales
WITH customer_sales AS 
(
	SELECT 
		customer_name, 
        ROUND(SUM(sales),2) AS total_sales 
	FROM superstore_sales 
    GROUP BY customer_name 
)
SELECT 
    *
FROM
    customer_sales
ORDER BY total_sales DESC LIMIT 5;


-- Sales by Category
CREATE VIEW vw_sales_by_category AS
    SELECT 
        category,
        ROUND(SUM(sales), 2) AS total_sales,
        ROUND(SUM(profit), 2) AS total_profit
    FROM
        superstore_sales
    GROUP BY category;

SELECT 
    *
FROM
    vw_sales_by_category;
