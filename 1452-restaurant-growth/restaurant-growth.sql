select 
    -- visited_on
    visited_on,
    
    -- amount column
    (
        select sum(amount)
        from Customer
        where visited_on between date_sub(c.visited_on, interval 6 day)
        and c.visited_on
    ) as amount,

    -- average_amount column
    round((
        select sum(amount)/7
        from Customer
        where visited_on between date_sub(c.visited_on, interval 6 day)
        and c.visited_on
    ), 2) as average_amount

from Customer c
where visited_on >= (
    select date_add(min(visited_on), interval 6 day)
    from Customer
)
group by visited_on
order by visited_on asc