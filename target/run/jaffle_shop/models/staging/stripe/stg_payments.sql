
  create or replace  view analytics.dbt_dbtakeehuna.stg_payments 
  
   as (
    with payments as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount / 100 as amount,
        created as created_at

    from raw.stripe.payment

)

select * from payments
  );
