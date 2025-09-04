select
movie_id,
date as transaction_day,
COALESCE(ticket_amount,0) as ticket_amount,
COALESCE(total_earned,0) as revenue,
'NJ_002' as location

from {{ source('SILVERSCREEN', 'nj_002') }}