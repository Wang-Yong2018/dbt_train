{% snapshot orders_snapshot %}
{{
    config(
      target_database='dbt',
      target_schema='audit',
      unique_key='"ID"',

      strategy='timestamp',
      updated_at='order_date',
    )
}}
select * from {{ source('jaffle_shop', 'orders') }}

{% endsnapshot %}