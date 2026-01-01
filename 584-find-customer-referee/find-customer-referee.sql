select c1.name as name
from Customer c1
left join Customer c2
on c1.id = c2.id
where c1.referee_id is null
   or c1.referee_id != 2