{{ config(materialized = 'view')}}

with data as
(
select * from {{ ref("course")}}
)
select * from data