with src_hosts as (
    select *
    from {{ ref('src_hosts') }}
)

select 
    host_id,
    coalesce(host_name, 'Unknown') as host_name,
    coalesce(is_superhost, false) as is_superhost,
    created_at,
    updated_at
from src_hosts