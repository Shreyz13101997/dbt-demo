with car_color as (
    select * from {{ source('test', 'car_color') }}
),
car_type as (
    select * from {{ source('test', 'car_type') }}
),
final as(
    select car_color.user_id, car_color.car_color, car_type.car_type 
    from car_color right join car_type
    on car_color.user_id = car_type.user_id
)

select * from final