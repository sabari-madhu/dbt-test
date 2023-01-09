
    
    



select record_timestamp
from "airbyte_postgres_sync"."dbt"."stg_sync_difference"
where record_timestamp is null


