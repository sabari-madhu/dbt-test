
    
    

select
    entry_id as unique_field,
    count(*) as n_records

from "airbyte_postgres_sync"."public"."airbyterandomdata"
where entry_id is not null
group by entry_id
having count(*) > 1


