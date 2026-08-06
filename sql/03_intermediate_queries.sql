-- Order Value Classificatin
SELECT 
    order_id,
    sales,
    CASE
        WHEN sales >= 500 THEN 'High Value'
        WHEN sales >= 100 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_value_category
FROM
    superstore_sales
LIMIT 20;

-- Count Orders by value category
SELECT 
    CASE
        WHEN sales >= 500 THEN 'High Value'
        WHEN sales >= 100 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_value_category,
    COUNT(*) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales
FROM
    superstore_sales
GROUP BY order_value_category
ORDER BY total_sales DESC;

## Business Insight

-- Order value segmentation shows that Medium Value orders contribute the highest overall sales, while High Value orders represent premium customers with significant revenue per transaction.

### Recommendation

--  Retain High Value customers through loyalty initiatives.
-- Increase the average order value of Medium Value customers using cross-selling and bundled offers.
-- Develop campaigns to convert Low Value customers into Medium Value customers.

