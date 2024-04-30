{% snapshot data_snap %}

{{
    config(
      target_database='dbt_dev',
      target_schema='dbt_avempalli',
      strategy='check',
      unique_key='std_id',
      check_cols=['col_fee'],
    )
}}

select * from {{ source('dbt_avempalli', 'data') }}

{% endsnapshot %}
