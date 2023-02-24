with id as(
    select * from {{ source('test', 'id') }}
),
dates as(
    select * from {{ source('test', 'date') }}
),
final as(
    select * 
    from id cross join dates
)

select * from final