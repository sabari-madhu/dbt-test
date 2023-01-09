
    
    



select record_timestamp
from "airbyte_postgres_sync"."dbt"."stg_timestamps"
where record_timestamp is null


