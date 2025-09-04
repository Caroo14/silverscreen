with sales as (
    select * from {{ ref('int_sales_monthly') }}
),
invoices as (
    select * from {{ ref('stg_invoice') }}
)

select
    s.movie_id,
    s.location,
    s.month,
    coalesce(s.tickets_sold,0) as tickets_sold,
    coalesce(s.revenue,0) as revenue,
    coalesce(i.rental_cost,0) as rental_cost
from sales s
left join invoices i
    on s.movie_id = i.movie_id
   and s.location = i.location_id
   and s.month = i.month  
