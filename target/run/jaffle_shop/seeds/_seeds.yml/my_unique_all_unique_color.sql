select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

-- custom generic test
with validation_errors as (

    select color
    from "main"."dev"."all_unique"
    group by color
    having count(*) > 1

)

select *
from validation_errors


      
    ) dbt_internal_test