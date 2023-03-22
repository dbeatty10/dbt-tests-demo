





with validation_errors as (

    select
        alternating, sub_ordering
    from "main"."dev"."unique_combos"
    group by alternating, sub_ordering
    having count(*) > 1

)

select *
from validation_errors


