select 
    movie_id,
    month,
    location_id,
    total_invoice_sum as rental_cost
from {{ source('SILVERSCREEN', 'invoices') }}