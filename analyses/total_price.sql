select 
     sum(total_price) as amount
from
    {{source('dbt_avempalli' , 'orders')}}