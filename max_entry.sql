{{
  config(
    materialized='table'
  )
}}

select

    entry_id,
    created_on,
    _airbyte_normalized_at as normalized_timestamp,
    (created_on - _airbyte_normalized_at) as delay

from {{source("public", "airbyterandomdata")}}
where entry_id = (
      select max(max_entry_id) as max_id
      from {{ref("stg_max_entry_per_transaction")}}
    )
