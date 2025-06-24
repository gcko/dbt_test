with source as (
  SELECT *
    FROM {{ ref('raw_employees') }}),

  renamed as (SELECT employee_id, employee_name FROM source)

SELECT * FROM renamed
