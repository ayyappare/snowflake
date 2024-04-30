-- File: products.sql
-- Description: Define model for products table

SELECT
    product_id,
    product_name,
    category,
    price
FROM
    {{ source('dbt_avempalli', 'products') }}
