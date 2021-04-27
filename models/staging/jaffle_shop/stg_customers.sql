WITH customers AS (
         SELECT 
            "ID" AS customer_id,
            first_name,
            last_name
           FROM airbyte.jaffle_shop_customers_csv
        )

select * from customers