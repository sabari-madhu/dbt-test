{{
  config(
    materialized='table'
  )
}}

select
      max(difference) as max_difference

from {{ ref('stg_sync_difference') }}
