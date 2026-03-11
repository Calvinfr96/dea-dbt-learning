with payments as (
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status as payment_status,
        amount as payment_amount,
        created as create_date
    from raw.stripe.payment
)

select * from payments