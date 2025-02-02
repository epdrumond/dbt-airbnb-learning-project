select *
from 
    {{ ref('fact_reviews') }} as rev
    inner join {{ ref('dim_listings_cleansed') }} as list on (
        rev.listing_id = list.listing_id
    )
where true 
    and rev.review_date < list.created_at