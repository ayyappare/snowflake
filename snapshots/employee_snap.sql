 {% snapshot employee_snap %}
 
{{
    config(
      target_database='dbt_dev',
      target_schema='dbt_avempalli',
      unique_key='emp_id',
 
      strategy='timestamp',
      updated_at = 'emp_doj',
    )
}}
 
select * from {{ source('dbt_avempalli', 'employees') }}
 
{% endsnapshot %}