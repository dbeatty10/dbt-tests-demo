

-- custom generic test
with validation_errors as (

    select color
    from "main"."dev"."all_unique"
    group by color
    having count(*) > 1

)

select *
from validation_errors

