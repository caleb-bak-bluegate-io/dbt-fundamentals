
    
    

with all_values as (

    select
        payment_method as value_field,
        count(*) as n_records

    from analytics.dbt_dbtakeehuna.stg_payments
    group by payment_method

)

select *
from all_values
where value_field not in (
    'bank_transfer','coupon','credit_card','gift_card'
)


