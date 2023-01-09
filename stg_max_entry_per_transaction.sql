{{
  config(
    materialized='view'
  )
}}

select
      max(entry_id) as max_entry_id,
      created_on

from {{ source('public', "airbyterandomdata") }}
-- public.airbyterandomdata

group by created_on

order by created_on desc
