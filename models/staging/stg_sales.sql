with source as (SELECT *
                FROM {{ ref('raw_sales') }}),

     renamed as (SELECT sale_id, store_id, amount, sale_date
FROM source)

SELECT *
FROM renamed
