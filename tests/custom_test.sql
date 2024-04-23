select
*
from 
   {{ ref('code')}}
where std_grade >= 6.6