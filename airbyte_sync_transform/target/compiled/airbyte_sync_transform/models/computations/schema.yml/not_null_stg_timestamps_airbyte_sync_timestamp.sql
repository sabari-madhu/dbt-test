
    
    



select airbyte_sync_timestamp
from "airbyte_postgres_sync"."dbt"."stg_timestamps"
where airbyte_sync_timestamp is null


