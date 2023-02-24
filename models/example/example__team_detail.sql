with teams as (
    select * from {{ ref('example__teams') }}
),
team_detail as(
  select * from {{ ref('team_locations') }}
),
final as(
    select * from teams join team_detail on teams.team = team_detail.name
)

select * from final