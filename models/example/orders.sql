-- File: orders.sql
-- Description: Define model for orders table

SELECT
    order_id,
    order_date,
    customer_id,
    product_id,
    quantity,
    total_price
FROM
    {{ source('dbt_avempalli', 'orders') }}
