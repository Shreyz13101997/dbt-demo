{% test city_not_jaipur(model, column_name) %}

with validation as (

    select
        {{ column_name }} as city

    from {{ model }}

),

validation_errors as (
    
    select
        city

    from validation
    
    where city = "{{ var('city_not_wanted') }}"

)

select *
from validation_errors

{% endtest %}