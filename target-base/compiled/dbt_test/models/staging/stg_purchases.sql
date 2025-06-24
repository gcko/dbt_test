with source as (SELECT *
                FROM "prod"."main"."raw_purchases"),

     renamed as (SELECT purchase_id, customer_id, store_id, purchase_date, amount
FROM source)

SELECT *
FROM renamed