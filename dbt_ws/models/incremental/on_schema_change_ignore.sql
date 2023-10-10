{{
    config(
        materialized='incremental',
        incremental_strategy='append',
        on_schema_change='ignore'
    )
}}

select *
from {{ ref('raw_orders_smol') }}
{% if is_incremental() %}
    where order_date > (select max(order_date) from {{ this }})
{% endif %}
