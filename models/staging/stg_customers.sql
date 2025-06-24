with source as (
  SELECT *
    FROM {{ ref('raw_customers') }}),

  renamed as (SELECT customer_id, customer_name FROM source)

SELECT * FROM renamed
