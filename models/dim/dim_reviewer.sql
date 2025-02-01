with src_reviews as (
    select *
    from {{ ref('src_reviews') }}
)

select 
  reviewer_id,
  reviewer_name,
  count(distinct review_id) as reviews,
  min(review_date) as first_review_date,
  max(review_date) as last_review_date
from src_reviews
group by 1,2