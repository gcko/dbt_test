with customers as (

    select * from {{ ref('stg_customers') }}

),

purchases as (

    select * from {{ ref('stg_purchases') }}

),

customer_purchases as (

        select
        customer_id,

        min(purchase_date) as first_purchase,
        max(purchase_date) as most_recent_purchase,
        count(order_id) as number_of_purchases
        sum(amount) as purchase_amount
    from purchases

    group by customer_id

),

final as (

    select
        customers.customer_id,
        customers.customer_name,
        customer_purchases.first_purchase,
        customer_purchases.most_recent_purchase,
        customer_purchases.number_of_purchases,
        customer_purchases.purchase_amount

    from customers

    left join customer_purchases
        on customers.customer_id = customer_purchases.customer_id

)

select * from final
