
    
    

select
    city_id as unique_field,
    count(*) as n_records

from "prod"."main"."stg_cities"
where city_id is not null
group by city_id
having count(*) > 1


