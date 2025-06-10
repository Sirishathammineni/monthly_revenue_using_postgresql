select * from sales_data;
SELECT
    EXTRACT(YEAR FROM order_date) AS sales_year,
    EXTRACT(MONTH FROM order_date) AS sales_month,
    SUM(total_amount) AS total_revenue, -- Using the 'total_amount' column directly for revenue
    COUNT(DISTINCT order_id) AS order_volume
FROM
    sales_data
WHERE
    total_amount IS NOT NULL AND total_amount > 0
    AND order_id IS NOT NULL 
GROUP BY
    sales_year,
    sales_month
ORDER BY
    sales_year,
    sales_month;

	