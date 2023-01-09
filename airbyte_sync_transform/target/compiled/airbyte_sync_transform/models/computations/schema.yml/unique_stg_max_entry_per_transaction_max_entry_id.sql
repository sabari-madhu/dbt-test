
    
    

select
    max_entry_id as unique_field,
    count(*) as n_records

from "airbyte_postgres_sync"."dbt"."stg_max_entry_per_transaction"
where max_entry_id is not null
group by max_entry_id
having count(*) > 1


