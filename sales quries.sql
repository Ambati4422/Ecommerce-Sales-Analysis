create database salesDB;
use salesDB;
describe cleaned_sales_data;
SELECT
    Customer Name,
    SUM(Sales) AS Total_Sales
FROM cleaned_sales_data
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;
show columns from cleaned_sales_data;
SELECT
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    AVG(discount) AS Average_Discount,
    SUM(quantity) AS Total_Quantity
FROM cleaned_sales_data;
SELECT
    year,
    SUM(sales) AS Total_Sales
FROM cleaned_sales_data
GROUP BY year
ORDER BY year;
SELECT
    order_priority,
    COUNT(*) AS Total_Records,
    SUM(sales) AS Total_Sales
FROM cleaned_sales_data
GROUP BY order_priority
ORDER BY Total_Sales DESC;
SELECT
    ROUND(AVG(shipping_cost), 2) AS Average_Shipping_Cost,
    MAX(shipping_cost) AS Highest_Shipping_Cost,
    MIN(shipping_cost) AS Lowest_Shipping_Cost
FROM cleaned_sales_data;
SELECT
    product_name,
    SUM(profit) AS total_profit
FROM cleaned_sales_data
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;
show columns from cleaned_sales_data;
SELECT
    Customer_name,
    SUM(Sales) AS Total_Sales
FROM cleaned_sales_data
GROUP BY Customer_name
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT
    state,
    SUM(sales) AS total_sales
FROM cleaned_sales_data
GROUP BY state
ORDER BY total_sales DESC;
SELECT
    region,
    SUM(sales) AS total_sales
FROM cleaned_sales_data
GROUP BY region
ORDER BY total_sales DESC;
select category,
round(AVG(PROFIT), 2) AS
average_profit
from cleaned_sales_data
group by category
order by average_profit DESC;
select category,
    ROUND(AVG(discount) * 100, 2) AS average_discount_percent
FROM cleaned_sales_data
GROUP BY category
ORDER BY average_discount_percent DESC;
SELECT
    order_id,
    customer_name,
    sales,
    profit
FROM cleaned_sales_data
WHERE profit < 0
ORDER BY profit ASC;
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS sales_month,
    ROUND(SUM(sales), 2) AS total_sales
FROM cleaned_sales_data
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY sales_month;
SELECT
    market,
    ROUND(SUM(sales), 2) AS total_revenue
FROM cleaned_sales_data
GROUP BY market
ORDER BY total_revenue DESC;
SELECT
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM cleaned_sales_data
GROUP BY sub_category
ORDER BY total_profit DESC
LIMIT 10;
SELECT
    ship_mode,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales
FROM cleaned_sales_data
GROUP BY ship_mode
ORDER BY total_orders DESC;
SELECT
    market,
    ROUND(SUM(sales), 2) AS total_revenue
FROM cleaned_sales_data
GROUP BY market
ORDER BY total_revenue DESC
LIMIT 1;
SELECT
    category,
    ROUND(SUM(profit), 2) AS total_profit
FROM cleaned_sales_data
GROUP BY category
ORDER BY total_profit ASC
LIMIT 1;
SELECT
    ship_mode,
    COUNT(*) AS total_records
FROM cleaned_sales_data
GROUP BY ship_mode
ORDER BY total_records DESC
LIMIT 1;
