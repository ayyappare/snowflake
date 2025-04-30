select
*
from 
   {{ ref('data')}}
where col_name = 'AITS'