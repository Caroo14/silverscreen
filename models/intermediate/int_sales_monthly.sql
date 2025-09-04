with nj001 as (
    select
        movie_id,
        date_trunc('month', transaction_day) as month,
        location,
        sum(ticket_amount) as tickets_sold,
        sum(revenue) as revenue
    from {{ ref('stg_nj_001') }}
    group by 1,2,3
),
nj002 as (
    select
        movie_id,
        date_trunc('month', transaction_day) as month,
        location,
        sum(ticket_amount) as tickets_sold,
        sum(revenue) as revenue
    from {{ ref('stg_nj_002') }}
    group by 1,2,3
),
nj003 as (
    select
        movie_id,
        date_trunc('month', transaction_day) as month,
        location,
        sum(ticket_amount) as tickets_sold,
        sum(revenue) as revenue
    from {{ ref('stg_nj_003') }}
    group by 1,2,3
)

select * from nj001
union all
select * from nj002
union all
select * from nj003
