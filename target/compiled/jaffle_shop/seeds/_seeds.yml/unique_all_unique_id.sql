
    
    

select
    id as unique_field,
    count(*) as n_records

from "main"."dev"."all_unique"
where id is not null
group by id
having count(*) > 1


