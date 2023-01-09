
    
    



select created_on
from "airbyte_postgres_sync"."dbt"."stg_max_entry_per_transaction"
where created_on is null


