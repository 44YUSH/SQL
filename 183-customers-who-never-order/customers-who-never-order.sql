select c.name as Customers
from Customers c
left join Orders o
on c.id = o.customerId


where c.id not in (select o.customerId from Orders o)
-- OR 
-- where o.customerId is null