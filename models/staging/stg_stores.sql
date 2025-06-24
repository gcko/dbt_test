with source as (SELECT *
                FROM {{ ref('raw_stores') }}),

     renamed as (SELECT as store_id, store_name, city_id
FROM source)

SELECT *
FROM renamed
