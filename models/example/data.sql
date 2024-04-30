{{ config(materialized = 'table')}}

with data as
(
select * from {{ ref("course")}}
)
select * from data