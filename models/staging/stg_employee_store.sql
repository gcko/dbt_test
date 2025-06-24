with source as (
  SELECT *
    FROM {{ ref('raw_employee_store') }}),

  renamed as (SELECT store_id, employee_id FROM source)

SELECT * FROM renamed
