with payment as (
    
    select 
        "ID" as payment_id,
        amount/100 as amount,
        status,
        created as created_at,
        orderid as order_id,
        paymentmethod as payment_method

    from dbt.airbyte.stripe_payments_csv)

select * from payment