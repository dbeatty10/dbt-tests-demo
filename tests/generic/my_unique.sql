{% test my_unique(model, column_name) %}

-- custom generic test
with validation_errors as (

    select {{ column_name }}
    from {{ model }}
    group by {{ column_name }}
    having count(*) > 1

)

select *
from validation_errors

{% endtest %}
