

select

    entry_id,
    created_on,
    _airbyte_normalized_at as normalized_timestamp,
    (created_on - _airbyte_normalized_at) as delay

from "airbyte_postgres_sync"."public"."airbyterandomdata"
where entry_id = (
      select max(max_entry_id) as max_id
      from "airbyte_postgres_sync"."dbt"."stg_max_entry_per_transaction"
    )