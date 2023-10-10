{{ config(
    materialized='incremental'
)}}

select *
from {{ ref('raw_orders') }}
where order_date in (current_date, current_date - interval '1' day)
