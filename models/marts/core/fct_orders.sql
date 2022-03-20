with 

payments as (
    select * from {{ ref( 'stg_payments' )}}
),

orders as (
    select * from {{ ref( 'stg_orders' )}}
),

order_payments as (

    select
        orders.order_id,
        sum( case when payments.status = 'success' then payments.amount else 0 end ) as amount

    from orders
    
    left join payments using ( order_id )

    group by 1

),

final as (

    select
        orders.customer_id,
        orders.order_id,
        orders.order_date,
        orders.status,
        coalesce(order_payments.amount, 0) as amount

    from orders

    left join order_payments using (order_id)

)

select * from final