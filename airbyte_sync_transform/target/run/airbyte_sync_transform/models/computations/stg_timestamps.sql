
  create view "airbyte_postgres_sync"."dbt"."stg_timestamps__dbt_tmp" as (
    

select
      created_on as record_timestamp,
      _airbyte_emitted_at as airbyte_sync_timestamp

from "airbyte_postgres_sync"."public"."airbyterandomdata"
-- public.airbyterandomdata
  );