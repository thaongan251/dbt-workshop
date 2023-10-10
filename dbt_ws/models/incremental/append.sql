{{ config(
    materialized='incremental',
    incremental_strategy='append'
)}}

select *
from {{ ref('raw_orders_smol') }}
{% if is_incremental() %}
    where order_date > (select max(order_date) from {{ this }})
{% endif %}
