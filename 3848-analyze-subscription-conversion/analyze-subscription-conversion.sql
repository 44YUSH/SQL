select a.user_id, trial_avg_duration, paid_avg_duration 
from (
    select user_id,
    round(avg(activity_duration),2) as trial_avg_duration
    from UserActivity
    where activity_type="free_trial"
    group by user_id
    order by user_id) as a
right join (
    select user_id,
    round(avg(activity_duration),2) as paid_avg_duration
    from UserActivity
    where activity_type="paid"
    group by user_id
    order by user_id) as b
on a.user_id=b.user_id;