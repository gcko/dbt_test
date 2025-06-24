
    
    

with child as (
    select employee_id as from_field
    from "prod"."main"."stg_employee_store"
    where employee_id is not null
),

parent as (
    select id as to_field
    from "prod"."main"."stg_employees"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


