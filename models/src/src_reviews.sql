with raw_reviews as (
    select *
    from {{ source('airbnb', 'reviews') }}
)
select 
  listing_id,
  id as review_id,
  review_date,
  reviewer_id,
  reviewer_name,
  comments as review_comments
from raw_reviews