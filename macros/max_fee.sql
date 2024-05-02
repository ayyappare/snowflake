
{% macro max_fee() %}
SELECT 
    COL_NAME,
    MAX(COL_FEE) AS col_max_fee
FROM 
    {{ ref('data')}}
GROUP BY
    COL_NAME
ORDER BY MAX(COL_FEE) DESC
{% endmacro %}   