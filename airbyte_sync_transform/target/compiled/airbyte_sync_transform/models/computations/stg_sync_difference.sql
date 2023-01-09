

select
      (airbyte_sync_timestamp - record_timestamp) as difference,
      record_timestamp

from "airbyte_postgres_sync"."dbt"."stg_timestamps"