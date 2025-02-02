with src_listings as (
    select *
    from {{ ref('src_listings') }}
)

select 
    listing_id,
    listing_url,
    listing_name,
    room_type,
    greatest(minimum_nights, 1) as minimum_nights,
    host_id,
    price,
    'EUR' as currency,
    created_at,
    updated_at
from src_listings