
    
    

select
    color as unique_field,
    count(*) as n_records

from "main"."dev"."all_unique"
where color is not null
group by color
having count(*) > 1


