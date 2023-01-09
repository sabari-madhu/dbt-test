
    
    

select
    max_entry as unique_field,
    count(*) as n_records

from "airbyte_postgres_sync"."dbt"."max_entry"
where max_entry is not null
group by max_entry
having count(*) > 1


