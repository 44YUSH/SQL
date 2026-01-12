select user_id,
count(prompt) as prompt_count,
round(avg(tokens), 2) as avg_tokens
from prompts
group by user_id
having avg(tokens) < max(tokens) and count(user_id) >= 3
order by avg(tokens) desc , user_id asc