
    
    

with child as (
    select customer_id as from_field
    from analytics.dbt_dbtakeehuna.stg_orders
    where customer_id is not null
),

parent as (
    select id as to_field
    from analytics.dbt_dbtakeehuna.stg_customers
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


