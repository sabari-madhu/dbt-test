
    
    

select
    max_difference as unique_field,
    count(*) as n_records

from "airbyte_postgres_sync"."dbt"."max_sync_delay"
where max_difference is not null
group by max_difference
having count(*) > 1


