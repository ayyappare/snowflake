select 
    std_id,
    std_name,
    
from {{ ref('code')}}