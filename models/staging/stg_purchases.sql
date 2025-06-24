with source as (SELECT *
                FROM {{ ref('raw_purchases') }}),

     renamed as (SELECT as purchase_id, customer_id, store_id, purchase_date, amount
FROM source)

SELECT *
FROM renamed
