-- Rank Customers by Sales
SELECT 
	customer_name, 
    ROUND(SUM(sales),2) AS total_sales,
	RANK() OVER(
		ORDER BY SUM(sales) DESC
    ) AS customer_rank
    FROM superstore_sales
    GROUP BY customer_name
    ORDER BY customer_rank;