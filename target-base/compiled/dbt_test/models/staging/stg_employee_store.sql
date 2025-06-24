with source as (
  SELECT *
    FROM "prod"."main"."raw_employee_store"),

  renamed as (SELECT store_id, employee_id FROM source)

SELECT * FROM renamed