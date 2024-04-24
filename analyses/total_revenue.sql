-- File: total_revenue_by_month.sql
-- Description: Calculate total revenue by month

WITH monthly_revenue AS (
    SELECT
        DATE_TRUNC('month', order_date) AS month,
        SUM(total_price) AS total_revenue
    FROM
        {{ ref('orders') }}
    GROUP BY
        1
    ORDER BY
        1
)

SELECT
    month,
    total_revenue
FROM
    monthly_revenue
