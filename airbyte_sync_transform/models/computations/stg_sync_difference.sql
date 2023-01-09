{{
  config(
    materialized='view'
  )
}}

select
      (airbyte_sync_timestamp - record_timestamp) as difference,
      record_timestamp

from {{ ref('stg_timestamps') }}
