select
    id,
    user_id,
    export_date,
    status,
    datediff(MINUTE, export_date, from_utc_timestamp(current_timestamp, 'Asia/Ho_Chi_Minh')) as minute_since_insert,
    datediff(DAY, export_date, from_utc_timestamp(current_timestamp, 'Asia/Ho_Chi_Minh')) as day_since_insert
from dbt_ws.my_source