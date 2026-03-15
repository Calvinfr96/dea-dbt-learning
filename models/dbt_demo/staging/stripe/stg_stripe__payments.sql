with payments as (
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status as payment_status,
        {{ dollars_to_cents("amount", 4) }} as payment_amount,
        created as create_date
    from {{ source('stripe', 'payment') }}
)

select * from payments