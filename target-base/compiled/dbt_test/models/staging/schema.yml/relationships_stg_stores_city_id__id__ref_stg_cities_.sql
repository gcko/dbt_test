
    
    

with child as (
    select city_id as from_field
    from "prod"."main"."stg_stores"
    where city_id is not null
),

parent as (
    select id as to_field
    from "prod"."main"."stg_cities"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


