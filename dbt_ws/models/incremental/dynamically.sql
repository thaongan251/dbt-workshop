{{ config(
    materialized='incremental'
)
}}

select *
from {{ ref('raw_orders') }}
where order_date > (select max(order_date) from {{ this }})
