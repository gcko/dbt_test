with source as (SELECT *
                FROM "prod"."main"."raw_stores"),

     renamed as (SELECT store_id, store_name, city_id
FROM source)

SELECT *
FROM renamed