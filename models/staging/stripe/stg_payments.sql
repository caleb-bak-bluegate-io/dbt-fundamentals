with payments as (

    select
        id as payment8id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount,
        created as created_at

    from raw.stripe.payment

)

select * from payments