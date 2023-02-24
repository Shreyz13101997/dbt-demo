with source_team as (
    select * from {{ source('test', 'example_teams') }}
),

final as(
    select * from source_team
)

select * from final