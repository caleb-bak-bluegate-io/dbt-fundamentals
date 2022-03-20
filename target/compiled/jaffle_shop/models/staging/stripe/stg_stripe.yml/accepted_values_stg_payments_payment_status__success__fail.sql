
    
    

with all_values as (

    select
        payment_status as value_field,
        count(*) as n_records

    from analytics.dbt_dbtakeehuna.stg_payments
    group by payment_status

)

select *
from all_values
where value_field not in (
    'success','fail'
)


