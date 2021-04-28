WITH customers AS (
         SELECT 
            "ID" AS customer_id,
            first_name,
            last_name
            from {{source('jaffle_shop','customers')}}
            
        )

select * from customers