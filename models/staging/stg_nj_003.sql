select 
details as movie_id,
timestamp as transaction_day,
COALESCE(amount,0) as ticket_amount,
COALESCE(total_value,0) as revenue,
'NJ_003' as location
from {{ source('SILVERSCREEN', 'nj_003') }}
WHERE product_type = 'ticket'