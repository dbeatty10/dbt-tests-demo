-- custom singular test
select id
from "main"."dev"."unique_combos"
group by id
having count(*) > 1