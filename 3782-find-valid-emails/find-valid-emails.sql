select user_id, email
from Users
where email regexp '^[A-Za-z0-9]+@[a-z]+\\.com$'
order by user_id asc