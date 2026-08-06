-- CREATE DATABASE 
CREATE DATABASE retail_sales_analytics;

-- USE DATABASE
USE retail_sales_analytics;


SHOW tables;

-- Display the Data
SELECT 
    *
FROM
    superstore_sales
LIMIT 10;

-- Count Total Records
SELECT 
    COUNT(*)
FROM
    superstore_sales;

-- Display Table Structure
DESCRIBE superstore_sales;