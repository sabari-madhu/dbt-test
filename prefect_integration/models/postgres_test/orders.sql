with orders as (select user_id, order_date, status from {{ source('dbt', 'raw_orders') }}),
customers as (select * from {{ source('dbt', 'raw_customers') }})

select
  *

from  orders left join customers on orders.user_id = customers.id
