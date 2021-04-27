with orders as (

    select
        "ID" as order_id,
        user_id as customer_id,
        order_date,
        status

    from dbt.airbyte.jaffle_shop_orders_csv

)

select * from orders
