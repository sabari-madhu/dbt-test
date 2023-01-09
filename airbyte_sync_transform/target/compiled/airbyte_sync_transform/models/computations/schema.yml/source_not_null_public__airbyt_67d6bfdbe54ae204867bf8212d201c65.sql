
    
    



select _airbyte_emitted_at
from "airbyte_postgres_sync"."public"."_airbyte_raw_airbyterandomdata"
where _airbyte_emitted_at is null


