{{
  config(
    materialized='table'
  )
}}

with

temp_difference as (select * from {{ref("stg_sync_difference")}}),

temp_max_entries as (select * from {{ref("stg_max_entry_per_transaction")}})


select

    distinct(max_entry_id) as max_ids,
    difference

from temp_difference inner join temp_max_entries
on temp_difference.record_timestamp = temp_max_entries.created_on
where difference = (select max(difference) from temp_difference)
