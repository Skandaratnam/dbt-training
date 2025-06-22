select
    customerid,
    country,
    segment,
    sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by
    customerid,
    country,
    segment