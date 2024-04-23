 {% snapshot std_snap %}
 
{{
    config(
      target_database='dbt_dev',
      target_schema='dbt_avempalli',
      unique_key='std_id',
 
      strategy='check',
      check_cols = 'all',
    )
}}
 
select * from {{ source('dbt_avempalli', 'student_data') }}
 
{% endsnapshot %}