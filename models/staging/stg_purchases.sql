with source as (SELECT *
                FROM {{ ref('raw_purchases') }}),

     renamed as (SELECT purchase_id,
                        customer_id,
                        store_id,
                        purchase_date,
                        -- divide by 100 (test)
                        amount / 100 as amount
                 FROM source)

SELECT *
FROM renamed
