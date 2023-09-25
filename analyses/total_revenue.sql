with payments as(

    select * from {{ ref('stg_s_payments') }}

),

final as(

    select
    sum(payment_amount) as total_success_amount
    
    from payments
    where payment_status = 'success'
)

select * from final