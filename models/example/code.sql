{{ config(materialized='table') }}

with code as 
(
select * from {{ ref("student_data")}}
)
select * from code 