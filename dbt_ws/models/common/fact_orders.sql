select
    stg_orders.id,
    stg_orders.user_id,
    stg_orders.order_date,
    stg_orders.status,
    stg_payments.payment_method,
    stg_payments.amount
from {{ ref('stg_orders') }} stg_orders
left join {{ ref('stg_payments') }} stg_payments
on stg_orders.id = stg_payments.order_id