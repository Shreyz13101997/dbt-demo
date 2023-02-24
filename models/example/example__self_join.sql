with product as (
    select * from {{ source('test', 'products') }}
),
parent as (
    select * from {{ source('test', 'products') }}
),
final as (
    select product.id, product.name, product.parent_id,  parent.name as parent_name
    from product left join parent
    on product.parent_id = parent.id
)
select * from final