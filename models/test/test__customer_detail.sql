with source_customer_detail as (
    select * from {{ source('test', 'customer_detail') }}
),

final as(
    select * from source_customer_detail
)

select * from final