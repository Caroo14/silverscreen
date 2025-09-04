select
    m.movie_id,
    m.movie_title,
    m.genre,
    m.studio,
    f.month,
    f.location,
    f.rental_cost,
    f.tickets_sold,
    f.revenue
from {{ ref('int_cost_revenue_monthly') }} as f
left join {{ ref('stg_movies') }} as m
  on f.movie_id = m.movie_id