

-- custom generic test
with validation_errors as (

    select id
    from "main"."dev"."all_unique"
    group by id
    having count(*) > 1

)

select *
from validation_errors

