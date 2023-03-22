-- custom singular test
select id
from {{ ref("unique_combos") }}
group by id
having count(*) > 1
