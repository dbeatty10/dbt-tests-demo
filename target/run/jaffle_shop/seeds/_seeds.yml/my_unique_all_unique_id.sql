select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

-- custom generic test
with validation_errors as (

    select id
    from "main"."dev"."all_unique"
    group by id
    having count(*) > 1

)

select *
from validation_errors


      
    ) dbt_internal_test