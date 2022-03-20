select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with

payments as (
    select * from analytics.dbt_dbtakeehuna.stg_payments
)

select
    order_id,
    sum( amount ) as total_amount
from payments
group by 1
having not ( total_amount >= 0 )
      
    ) dbt_internal_test