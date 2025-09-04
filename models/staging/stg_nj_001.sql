select 
movie_id,
timestamp as transaction_day,
COALESCE (ticket_amount,0) as ticket_amount,
COALESCE (transaction_total,0) as revenue,
'NJ_001' as location
from {{ source("SILVERSCREEN", "nj_001") }}
