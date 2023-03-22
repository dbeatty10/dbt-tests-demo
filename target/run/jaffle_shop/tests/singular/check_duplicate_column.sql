select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      -- custom singular test
select id
from "main"."dev"."unique_combos"
group by id
having count(*) > 1
      
    ) dbt_internal_test