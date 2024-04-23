{{ config(materialized='table') }}

with snap_model as 
(
select * from {{ ref("employee_snap")}}
)
select * from snap_model
 