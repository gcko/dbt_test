
    
    

with child as (
    select customer_id as from_field
    from "prod"."main"."stg_purchases"
    where customer_id is not null
),

parent as (
    select id as to_field
    from "prod"."main"."customers"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


