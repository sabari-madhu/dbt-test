{{
  config(
    materialized='view'
  )
}}

select
      created_on as record_timestamp,
      _airbyte_emitted_at as airbyte_sync_timestamp

from {{ source('public', "airbyterandomdata") }}
-- public.airbyterandomdata
