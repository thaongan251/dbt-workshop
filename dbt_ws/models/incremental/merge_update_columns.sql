{{ config(
    materialized='incremental',
    incremental_strategy='merge',
    unique_key=['id'],
    merge_update_columns=['status']
)}}

select *
from {{ ref('raw_orders_smol') }}
{% if is_incremental() %}
    where order_date > (select max(order_date) from {{ this }})
{% endif %}
