select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      





with validation_errors as (

    select
        alternating, sub_ordering
    from "main"."dev"."unique_combos"
    group by alternating, sub_ordering
    having count(*) > 1

)

select *
from validation_errors



      
    ) dbt_internal_test