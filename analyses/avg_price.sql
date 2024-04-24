-- File: avg_total_price.sql
-- Description: Calculate overall average total price

SELECT
    AVG(total_price) AS avg_total_price
FROM
    {{ source('dbt_avempalli', 'orders') }}

