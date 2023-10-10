{{ config(
    materialized='incremental',
    incremental_strategy='merge',
    unique_key=['id'],
    merge_exclude_columns=['order_date']
)}}

select *
from {{ ref('raw_orders_smol') }}
{% if is_incremental() %}
    where order_date > (select max(order_date) from {{ this }})
{% endif %}
