select
*
from 
   {{ ref('code')}}
where std_name = 'ram'