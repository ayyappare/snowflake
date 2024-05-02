
{% macro total_rev_cust() %}
SELECT
    CUSTOMER_ID,
    SUM(TOTAL_PRICE) AS total_revenue
FROM
    {{ ref('orders') }}
GROUP BY
    CUSTOMER_ID
{% endmacro %}
