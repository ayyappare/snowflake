with snap_data as
(
    select * from {{ ref("data_snap")}}
)
select * from snap_data