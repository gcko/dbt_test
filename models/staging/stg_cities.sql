with source as (
  SELECT *
    FROM {{ ref('raw_cities') }}),

  renamed as (SELECT city_id, city_name FROM source)

SELECT * FROM renamed
