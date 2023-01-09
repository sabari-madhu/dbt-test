
    
    



select max_entry_id
from "airbyte_postgres_sync"."dbt"."stg_max_entry_per_transaction"
where max_entry_id is null


