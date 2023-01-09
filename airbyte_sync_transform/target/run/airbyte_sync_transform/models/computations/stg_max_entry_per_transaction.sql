
  create view "airbyte_postgres_sync"."dbt"."stg_max_entry_per_transaction__dbt_tmp" as (
    

select
      max(entry_id) as max_entry_id,
      created_on

from "airbyte_postgres_sync"."public"."airbyterandomdata"
-- public.airbyterandomdata

group by created_on

order by created_on desc
  );