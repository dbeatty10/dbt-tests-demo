



with validation_errors as (

    select
        alternating,sub_ordering
    from "main"."dev"."unique_combos"
    where
        1=1
        and 
    not (
        alternating is null and 
        sub_ordering is null
        
    )


    
    group by
        alternating,sub_ordering
    having count(*) > 1

)
select * from validation_errors
