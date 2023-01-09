
  
    

  create  table "airbyte_postgres_sync"."dbt"."max_sync_delay__dbt_tmp"
  as (
    

select
      max(difference) as max_difference

from "airbyte_postgres_sync"."dbt"."stg_sync_difference"
  );
  